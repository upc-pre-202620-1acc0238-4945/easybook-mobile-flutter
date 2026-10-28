import 'package:book_app/features/home/application/get_books_use_case.dart';
import 'package:book_app/features/home/domain/book_repository.dart';
import 'package:book_app/features/home/infrastructure/book_repository_impl.dart';
import 'package:book_app/features/home/infrastructure/remote/book_api.dart';
import 'package:book_app/features/home/presentation/home_page.dart';
import 'package:book_app/features/home/presentation/home_view_model.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  late final List<Widget> pages;
  late final HomeViewModel viewModel;
  late final GetBooksUseCase useCase;
  late final BookRepository repository;
  late final BookApi api;

  @override
  void initState() {
    super.initState();
    api = BookApi();
    repository = BookRepositoryImpl(api: api);
    useCase = GetBooksUseCase(repository: repository);
    viewModel = HomeViewModel(useCase: useCase);
    pages = [
      HomePage(viewModel: viewModel),
      Text('Library'),
      Text('Favorites'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[selectedIndex]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.library_books_outlined),
            selectedIcon: Icon(Icons.library_books),
            label: 'Library',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline),
            selectedIcon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}

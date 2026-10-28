import 'package:book_app/features/home/application/get_books_use_case.dart';
import 'package:book_app/features/home/domain/book_repository.dart';
import 'package:book_app/features/home/infrastructure/book_repository_impl.dart';
import 'package:book_app/features/home/infrastructure/remote/book_api.dart';
import 'package:book_app/features/home/presentation/home_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<BookApi>(() => BookApi());
  getIt.registerLazySingleton<BookRepository>(
    () => BookRepositoryImpl(api: getIt<BookApi>()),
  );
  getIt.registerLazySingleton<GetBooksUseCase>(
    () => GetBooksUseCase(repository: getIt<BookRepository>()),
  );
  getIt.registerFactory<HomeViewModel>(
    () => HomeViewModel(useCase: getIt<GetBooksUseCase>()),
  );
}

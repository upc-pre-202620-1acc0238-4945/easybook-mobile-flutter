import 'package:book_app/core/app_database.dart';
import 'package:book_app/features/favorites/application/get_favorites_use_case.dart';
import 'package:book_app/features/favorites/application/toggle_favorite_use_case.dart';
import 'package:book_app/features/favorites/domain/favorite_repository.dart';
import 'package:book_app/features/favorites/infrastructure/favorite_dao.dart';
import 'package:book_app/features/favorites/infrastructure/favorite_repository_impl.dart';
import 'package:book_app/features/home/application/get_books_use_case.dart';
import 'package:book_app/features/home/domain/book_repository.dart';
import 'package:book_app/features/home/infrastructure/book_repository_impl.dart';
import 'package:book_app/features/home/infrastructure/remote/book_api.dart';
import 'package:book_app/features/home/presentation/home_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<AppDatabase>(() => AppDatabase());
  getIt.registerLazySingleton<FavoriteDao>(
    () => FavoriteDao(appDatabase: getIt<AppDatabase>()),
  );

  getIt.registerLazySingleton<FavoriteRepository>(
    () => FavoriteRepositoryImpl(dao: getIt<FavoriteDao>()),
  );

  getIt.registerLazySingleton<GetFavoritesUseCase>(
    () => GetFavoritesUseCase(repository: getIt<FavoriteRepository>()),
  );

  getIt.registerLazySingleton<ToggleFavoriteUseCase>(
    () => ToggleFavoriteUseCase(repository: getIt<FavoriteRepository>()),
  );

  getIt.registerLazySingleton<BookApi>(() => BookApi());
  getIt.registerLazySingleton<BookRepository>(
    () => BookRepositoryImpl(api: getIt<BookApi>()),
  );
  getIt.registerLazySingleton<GetBooksUseCase>(
    () => GetBooksUseCase(repository: getIt<BookRepository>()),
  );
  getIt.registerLazySingleton<HomeViewModel>(
    () => HomeViewModel(
      getMovies: getIt<GetBooksUseCase>(),
      getFavorites: getIt<GetFavoritesUseCase>(),
      toggleFavorite: getIt<ToggleFavoriteUseCase>(),
    ),
  );
}

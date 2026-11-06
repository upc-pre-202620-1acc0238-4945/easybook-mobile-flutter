import 'package:book_app/core/app_database.dart';
import 'package:book_app/core/secure_token_storage.dart';
import 'package:book_app/core/token_storage.dart';
import 'package:book_app/features/auth/application/login_use_case.dart';
import 'package:book_app/features/auth/domain/auth_repository.dart';
import 'package:book_app/features/auth/infrastructure/auth_repository_impl.dart';
import 'package:book_app/features/auth/infrastructure/remote/auth_api.dart';
import 'package:book_app/features/auth/presentation/login_view_model.dart';
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
import 'package:book_app/features/library/application/get_read_books_use_case.dart';
import 'package:book_app/features/library/domain/readlist_repository.dart';
import 'package:book_app/features/library/infrastructure/readlist_repository_impl.dart';
import 'package:book_app/features/library/infrastructure/remote/readlist_api.dart';
import 'package:book_app/features/library/presentation/readlist_view_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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

  getIt.registerLazySingleton<AuthApi>(() => AuthApi());

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      api: getIt<AuthApi>(),
      storage: getIt<TokenStorage>(),
    ),
  );

  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(repository: getIt<AuthRepository>()),
  );

  getIt.registerLazySingleton<LoginViewModel>(
    () => LoginViewModel(login: getIt<LoginUseCase>()),
  );

  getIt.registerLazySingleton<FlutterSecureStorage>(
    () => FlutterSecureStorage(),
  );

  getIt.registerLazySingleton<TokenStorage>(
    () => SecureTokenStorage(storage: getIt<FlutterSecureStorage>()),
  );

  getIt.registerLazySingleton<ReadlistApi>(
    () => ReadlistApi(storage: getIt<TokenStorage>()),
  );

  getIt.registerLazySingleton<ReadlistRepository>(
    () => ReadlistRepositoryImpl(api: getIt<ReadlistApi>()),
  );

  getIt.registerLazySingleton<GetReadBooksUseCase>(
    () => GetReadBooksUseCase(repository: getIt<ReadlistRepository>()),
  );

  getIt.registerLazySingleton(
    () => ReadlistViewModel(getReadBooks: getIt<GetReadBooksUseCase>()),
  );
}

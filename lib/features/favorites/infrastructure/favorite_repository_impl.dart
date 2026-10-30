import 'package:book_app/features/favorites/domain/favorite_repository.dart';
import 'package:book_app/features/favorites/infrastructure/favorite_dao.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final FavoriteDao dao;

  const new({required this.dao});

  @override
  Future<void> addFavorite(int id) async {
    await dao.addFavorite(id);
  }

  @override
  Future<List<int>> getFavorites() {
    return dao.getFavorites();
  }

  @override
  Future<void> removeFavorire(int id) async {
    return dao.removeFavorite(id);
  }
}

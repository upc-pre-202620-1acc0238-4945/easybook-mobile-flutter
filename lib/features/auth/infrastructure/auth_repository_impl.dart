import 'package:book_app/features/auth/domain/auth_repository.dart';
import 'package:book_app/features/auth/domain/user.dart';
import 'package:book_app/features/auth/infrastructure/remote/auth_api.dart';
import 'package:book_app/features/auth/infrastructure/remote/login_response_dto.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi _api;
  const new({required this._api});

  @override
  Future<User> login(String email, String password) async {
    final LoginResponseDto dto = await _api.login(email, password);
    return User(
      lastName: dto.lastName,
      firstName: dto.firstName,
      email: dto.email,
    );
  }
}

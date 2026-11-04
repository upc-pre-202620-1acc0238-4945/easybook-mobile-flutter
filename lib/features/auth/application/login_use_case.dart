import 'package:book_app/features/auth/domain/auth_repository.dart';
import 'package:book_app/features/auth/domain/user.dart';

class LoginUseCase {
  final AuthRepository _repository;
  const new({required this._repository});

  Future<User> execute(String email, String password) {
    return _repository.login(email, password);
  }
}

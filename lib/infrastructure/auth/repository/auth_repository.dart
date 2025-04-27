import 'package:deliver_eats/domain/auth/i_auth_repository.dart';
import 'package:deliver_eats/domain/core/auth_failure.dart';
import 'package:deliver_eats/infrastructure/auth/data_source/auth_data_source.dart';
import 'package:fpdart/fpdart.dart';

// @LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final AuthDataSource _dataSource;
  AuthRepository(this._dataSource);

  @override
  Future<Either<AuthFailure, Unit>> signInManual(
      String email, String password) async {
    try {
      final response = await _dataSource.getSignedInUser(
        email: email,
        password: password,
      );

      return response.fold(
        () => left(const AuthFailure.invalidCredentials()),
        (_) => right(unit),
      );
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpManual(
      String email, String password, String displayName) async {
    try {
      // Implementasi untuk pendaftaran pengguna
      // Catatan: Ini perlu diimplementasi berdasarkan kebutuhan aplikasi
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}

import 'package:deliver_eats/domain/core/auth_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> signUpManual(
    String email,
    String password,
    String displayName,
  );
  Future<Either<AuthFailure, Unit>> signInManual(
    String email,
    String password,
  );
}

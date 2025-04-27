import 'package:deliver_eats/domain/auth/i_auth_repository.dart';
import 'package:deliver_eats/domain/core/auth_failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

/// Mock implementasi dari [IAuthRepository] untuk keperluan pengujian
///
/// Kelas ini menyimulasikan respons dari endpoint API tanpa implementasi nyata.
/// Berguna ketika API belum selesai dikembangkan, sehingga pengembangan frontend
/// tetap dapat dilanjutkan dengan menyimulasikan respons yang diharapkan.
@LazySingleton(as: IAuthRepository)
class MockAuthRepository implements IAuthRepository {
  /// Menyimulasikan respons endpoint untuk sign in
  ///
  /// Selalu mengembalikan respons sukses dengan data user dummy
  /// setelah delay untuk menyimulasikan waktu jaringan
  @override
  Future<Either<AuthFailure, Unit>> signInManual(
      String email, String password) async {
    try {
      // Simulasi delay jaringan
      await Future.delayed(const Duration(seconds: 4));

      // Anggap endpoint memberikan respons sukses
      // dan aplikasi membuat UserEntity dari respons tersebut
      // final user = UserEntity(
      //   id: '1',
      //   email: 'test1@gmail.com',
      //   displayName: 'Dummy User',
      //   emailVerified: true,
      //   isAnonymous: false,
      // );

      // Respons sukses dari endpoint
      return right(unit);
    } catch (e) {
      // Simulasi gagal koneksi ke endpoint
      return left(const AuthFailure.serverError());
    }
  }

  /// Menyimulasikan respons endpoint untuk sign up
  ///
  /// Selalu mengembalikan respons sukses dengan data user dummy baru
  /// setelah delay untuk menyimulasikan waktu jaringan
  @override
  Future<Either<AuthFailure, Unit>> signUpManual(
      String email, String password, String displayName) async {
    try {
      // Simulasi delay jaringan
      await Future.delayed(const Duration(seconds: 2));

      // Anggap endpoint memberikan respons sukses
      // dan aplikasi membuat UserEntity dari respons tersebut
      // final user = UserEntity(
      //   id: '1',
      //   email: email,
      //   displayName: displayName,
      //   emailVerified: false,
      //   isAnonymous: false,
      // );

      // Respons sukses dari endpoint
      return right(unit);
    } catch (e) {
      // Simulasi gagal koneksi ke endpoint
      return left(const AuthFailure.serverError());
    }
  }
}

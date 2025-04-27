// ignore_for_file: avoid_print

import 'package:deliver_eats/core/commons/api_path_constant.dart';
import 'package:deliver_eats/domain/auth/json/user_entity.dart';
import 'package:deliver_eats/infrastructure/core/api_helper.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@injectable
class AuthDataSource {
  final ApiHelper _apiHelper;

  AuthDataSource(this._apiHelper);
  var logger = Logger();

  Future<Option<UserEntity>> getSignedInUser({
    required String email,
    required String password,
  }) async {
    try {
      // Mengirim data sebagai body sesuai dengan contoh curl
      final Map<String, dynamic> bodyData = {
        'email': email,
        'password': password,
      };

      logger.i('Attempting login with email: $email');

      final response = await _apiHelper.post(
        path: ApiPathConstant.signIn(),
        data: bodyData, // Menggunakan data sebagai body, bukan query parameter
      );

      logger.i('Response from server: ${response.code}');

      if (response.code == 200) {
        final userEntity = UserEntity.fromJson(response.data);
        return some(userEntity);
      } else {
        logger.w(
            'Login failed, response code: ${response.code}, message: ${response.errorMsg}');
      }
      return none();
    } catch (e, stackTrace) {
      logger.e('Error sign in: $e', error: e, stackTrace: stackTrace);
      print('Error sign in: $e');
      print('Stack trace: $stackTrace');
      rethrow;
    }
  }
}

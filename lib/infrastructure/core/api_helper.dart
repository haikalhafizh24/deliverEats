import 'dart:io';

import 'package:deliver_eats/infrastructure/common/dtos/api_response_model.dart';
import 'package:deliver_eats/infrastructure/core/api_configuration.dart';
import 'package:deliver_eats/infrastructure/core/exceptions.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

/// Helper class untuk melakukan request HTTP ke API
/// Mengabstraksikan detail implementasi Dio dan menangani error
@LazySingleton()
class ApiHelper {
  // Instance Dio untuk melakukan HTTP request
  final Dio _dio;

  // Konstruktor dengan dependency injection
  ApiHelper(
    this._dio,
  );

  /// Melakukan HTTP POST request ke endpoint API
  /// @param path Path relatif endpoint API (akan digabung dengan baseUrl)
  /// @param queryParameters Parameter query string (opsional)
  /// @param data Body data untuk request (opsional)
  /// @param options Opsi tambahan untuk request (opsional)
  /// @return ApiResponseModel yang berisi hasil dari request
  Future<ApiResponseModel> post({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    Options? options,
  }) async {
    try {
      // Melakukan POST request dengan Dio
      final Response response = await _dio.post(
        path,
        queryParameters: queryParameters,
        data: data,
        options: options,
      );

      // Menangani respons menggunakan ApiConfiguration
      return ApiConfiguration.handleApiResponse(response);
    } on SocketException {
      // Error koneksi jaringan
      return Future.error(NoInternetException());
    } on DioException catch (e) {
      // Error dari Dio (HTTP error, timeout, dll)
      return ApiConfiguration.handleDioErrorResponse(e);
    } catch (e) {
      // Error tidak terduga lainnya
      return Future.error(UnknownException(e));
    }
  }
}

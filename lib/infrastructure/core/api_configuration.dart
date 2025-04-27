import 'package:deliver_eats/infrastructure/common/dtos/api_response_model.dart';
import 'package:deliver_eats/infrastructure/core/exceptions.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

/// Kelas utilitas untuk konfigurasi dan penanganan respons API
/// Bertanggung jawab untuk memvalidasi dan mengolah respons dari Dio
class ApiConfiguration {
  // Konstruktor privat agar tidak bisa diinstansiasi
  const ApiConfiguration._();

  // Logger untuk mencatat aktivitas dan error
  static final _logger = Logger();

  /// Menangani respons API dari Dio
  /// Memvalidasi format, mengubah ke ApiResponseModel, dan menangani error
  /// @param response Respons dari Dio HTTP client
  /// @return ApiResponseModel jika berhasil, atau error jika gagal
  static Future<ApiResponseModel> handleApiResponse(Response response) async {
    _logger.d('Handling API response: ${response.statusCode}');

    // Validasi format respons
    if (!ApiResponseModel.isFormatValid(response.data)) {
      _logger.e(
          'API response format invalid: ${response.data is Map ? (response.data as Map).keys.toList() : 'not a map'}');
      return Future.error(ApiResponseNotValidException());
    }

    // Konversi respons ke ApiResponseModel
    final model = ApiResponseModel.fromJson(response);
    _logger
        .d('API Model created: ${model.code}, has data: ${model.data != null}');

    // Validasi keberadaan data (kecuali untuk respons Supabase Auth tertentu)
    // Respons Supabase Auth mungkin memiliki null data dalam beberapa kasus tapi masih valid
    if (model.data == null &&
        !(response.data is Map<String, dynamic> &&
            (response.data.containsKey('access_token') ||
                response.data.containsKey('user')))) {
      _logger.e('API response has null data');
      return Future.error(PreConditionedException(model));
    }

    return model;
  }

  /// Menangani error yang terjadi saat melakukan HTTP request dengan Dio
  /// Mengkonversi DioException menjadi ApiResponseModel atau exception yang sesuai
  /// @param error Error dari Dio HTTP client
  /// @return ApiResponseModel jika bisa dikonversi, atau error jika tidak
  static Future<ApiResponseModel> handleDioErrorResponse(
      DioException error) async {
    _logger.e('Dio error: ${error.type}', error: error);

    // Menangani berbagai jenis error Dio
    switch (error.type) {
      case DioExceptionType.badResponse:
        // Jika ada respons dari server meskipun error, coba tangani
        if (error.response != null &&
            ApiResponseModel.isFormatValid(error.response!.data)) {
          return handleApiResponse(error.response!);
        }
        break;
      case DioExceptionType.connectionError:
        // Error koneksi jaringan
        return Future.error(TimeoutException());
      case DioExceptionType.sendTimeout:
        // Timeout saat mengirim request
        return Future.error(TimeoutException());
      case DioExceptionType.receiveTimeout:
        // Timeout saat menerima respons
        return Future.error(TimeoutException());
      default:
        // Error lainnya
        return Future.error(TimeoutException());
    }
    // Fallback untuk error yang tidak ditangani secara khusus
    return Future.error(TimeoutException());
  }
}

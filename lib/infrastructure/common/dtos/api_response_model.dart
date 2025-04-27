import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'api_response_model.freezed.dart';

/// Model standar untuk respons API
/// Digunakan untuk menstandardisasi berbagai format respons API menjadi satu format yang konsisten
@freezed
class ApiResponseModel with _$ApiResponseModel {
  // Konstruktor privat untuk menambahkan metode instance
  const ApiResponseModel._();

  // Konstruktor factory untuk membuat instance model
  // @Default digunakan untuk memberikan nilai default pada parameter
  const factory ApiResponseModel({
    @Default('OK') String status, // Status respons (OK/Not OK)
    @Default('') String errorMsg, // Pesan error jika ada
    @Default(0) int? code, // Kode status HTTP
    dynamic data, // Data respons yang bervariasi
  }) = _ApiResponseModel;

  // Daftar kunci yang mungkin ada dalam respons API valid
  static List<String> validResponseKeys = [
    'status', // Untuk respons umum
    'results', // Untuk respons NY Times API
    'response', // Untuk respons API lainnya
    'fault', // Untuk respons error
    'access_token', // Khusus untuk respons Supabase Auth
    'user', // Khusus untuk respons Supabase Auth
  ];

  // Logger untuk mencatat pesan debugging
  static final _logger = Logger();

  /// Memeriksa apakah format respons valid sesuai dengan format yang diharapkan
  /// @param data Data respons yang akan divalidasi
  /// @return true jika format valid, false jika tidak
  static bool isFormatValid(dynamic data) {
    // Memeriksa apakah respons adalah Map
    if (data is Map<String, dynamic>) {
      // Khusus untuk respons Supabase Auth (punya access_token atau user)
      if (data.containsKey('access_token') || data.containsKey('user')) {
        return true;
      }

      // Untuk format API lainnya, periksa apakah ada kunci yang valid
      return data.keys.any(
        (resKey) => validResponseKeys.any(
          (validResKey) => resKey == validResKey,
        ),
      );
    }
    return false;
  }

  /// Membuat instance ApiResponseModel dari respons Dio
  /// Menangani berbagai format respons API dan mengubahnya menjadi format standar
  /// @param response Respons dari Dio HTTP client
  /// @return ApiResponseModel yang terstandarisasi
  factory ApiResponseModel.fromJson(Response response) {
    // Log untuk debugging
    _logger.d('Response status code: ${response.statusCode}');
    _logger.d(
        'Response data keys: ${response.data is Map ? (response.data as Map).keys.toList() : 'not a map'}');

    // Menangani respons sukses (status code 200)
    if (response.statusCode == 200) {
      // Penanganan khusus untuk respons Supabase Auth
      if (response.data is Map<String, dynamic> &&
          (response.data.containsKey('access_token') ||
              response.data.containsKey('user'))) {
        return ApiResponseModel(
          code: response.statusCode,
          status: 'OK',
          errorMsg: '',
          data: response.data, // Simpan seluruh data respons
        );
      }

      // Untuk respons API lainnya
      final apiResponse = ApiResponseModel(
        code: response.statusCode,
        errorMsg: '',
        status: response.data['status'] ??
            'OK', // Gunakan 'OK' jika status tidak ada
      );

      final res = response.data as Map<String, dynamic>?;

      // Jika respons null, kembalikan model dengan pesan error
      if (res == null) {
        return apiResponse.copyWith(
          data: null,
          errorMsg: 'cannot retrieve data',
        );
      }

      // Jika respons memiliki kunci 'response', gunakan sebagai data
      if (res.containsKey('response')) {
        return apiResponse.copyWith(
          data: response.data['response'],
        );
      }

      // Jika respons memiliki kunci 'results', gunakan sebagai data (untuk NY Times API)
      if (res.containsKey('results')) {
        return apiResponse.copyWith(
          data: response.data['results'],
        );
      }

      // Jika tidak ada kunci khusus, gunakan seluruh respons sebagai data
      return apiResponse.copyWith(
        data: response.data,
      );
    } else {
      // Menangani respons error (status code bukan 200)
      String errorMsg = 'Unknown error';

      // Ekstraksi pesan error dari berbagai format respons error
      if (response.data is Map<String, dynamic>) {
        final errorData = response.data as Map<String, dynamic>;
        if (errorData.containsKey('fault')) {
          // Format error API tertentu
          errorMsg = errorData['fault']['faultstring'] ?? 'Server error';
        } else if (errorData.containsKey('errors') &&
            errorData['errors'] is List &&
            errorData['errors'].isNotEmpty) {
          // Format error dengan array errors
          errorMsg = errorData['errors'][0].toString();
        } else if (errorData.containsKey('message')) {
          // Format error umum dengan field message
          errorMsg = errorData['message'];
        } else if (errorData.containsKey('error')) {
          // Format error umum dengan field error
          errorMsg = errorData['error'];
        }
      }

      // Kembalikan model dengan informasi error
      return ApiResponseModel(
        code: response.statusCode,
        errorMsg: errorMsg,
        data: null,
        status: 'Not OK',
      );
    }
  }
}

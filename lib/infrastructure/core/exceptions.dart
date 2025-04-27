import 'package:deliver_eats/infrastructure/common/dtos/api_response_model.dart';

/// Exception dasar untuk kesalahan terkait respons API
/// Menyimpan model respons API untuk akses ke detail error
class ApiResponseException implements Exception {
  final ApiResponseModel model; // Model respons API yang menyebabkan exception
  final String message; // Pesan error tambahan

  ApiResponseException(this.message, this.model);
  @override
  String toString() => "$message ${model.errorMsg}";
}

/// Exception ketika respons API tidak memenuhi prasyarat (biasanya null data)
class PreConditionedException extends ApiResponseException {
  PreConditionedException(ApiResponseModel model) : super("Error: ", model);
  @override
  String toString() => model.errorMsg;
}

/// Exception dasar untuk kesalahan umum (tidak terkait langsung dengan respons API)
class DefaultException implements Exception {
  final String? _message; // Pesan error

  DefaultException(this._message);
  @override
  String toString() => _message ?? "No internet connection";
}

/// Exception ketika tidak ada koneksi internet
class NoInternetException extends DefaultException {
  NoInternetException() : super('No internet connection');
}

/// Exception untuk kesalahan yang tidak diketahui/tidak terduga
class UnknownException extends DefaultException {
  UnknownException(e)
      : super(e != null
            ? e.toString()
            : 'Unknown error, please report this to us');
}

/// Exception ketika request timeout (koneksi terlalu lama)
class TimeoutException extends DefaultException {
  TimeoutException()
      : super('Problem with connection timeout, please try again');
}

/// Exception ketika format respons API tidak valid/tidak dikenali
class ApiResponseNotValidException extends DefaultException {
  ApiResponseNotValidException()
      : super('Server error, please report this to us');
}

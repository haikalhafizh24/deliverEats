import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
  const factory AuthFailure.userNotFound() = UserNotFound;
  // const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
//   const factory AuthFailure.weakPassword() = WeakPassword;
//   const factory AuthFailure.userDisabled() = UserDisabled;
//   const factory AuthFailure.tooManyRequests() = TooManyRequests;
//   const factory AuthFailure.operationNotAllowed() = OperationNotAllowed;
//   const factory AuthFailure.unexpectedError() = UnexpectedError;
}

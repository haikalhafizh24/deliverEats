import 'package:deliver_eats/domain/core/form_failure.dart';
import 'package:deliver_eats/domain/core/form_validator.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_entity.freezed.dart';

@freezed
class SignInEntity with _$SignInEntity {
  const SignInEntity._();

  const factory SignInEntity({
    required String email,
    required String password,
  }) = _SignInEntity;

  factory SignInEntity.empty() => const SignInEntity(
        email: '',
        password: '',
      );

  Option<FormFailure> get failureOption => FormValidator.emailValidator(email)
      .andThen(() => FormValidator.passwordValidator(password))
      .fold(
        (failure) => some(failure),
        (_) => none(),
      );

  String? get emailErrorMsg => FormValidator.emailValidator(email).fold(
        (failure) => failure.maybeWhen(
          orElse: () => null,
          empty: () => 'Email cannot be empty',
          tooLong: () => 'Email must not exceed 50 characters',
          invalidEmailAddress: () => 'Invalid Email',
        ),
        (_) => null,
      );

  String? get passwordErrorMsg =>
      FormValidator.passwordValidator(password).fold(
        (failure) => failure.maybeWhen(
          orElse: () => null,
          empty: () => 'Password cannot be empty',
          tooShort: () => 'Password must be at least 8 characters',
          invalidPassword: () =>
              'Ensure the password includes uppercase letters, numbers, and special characters.',
        ),
        (_) => null,
      );
}

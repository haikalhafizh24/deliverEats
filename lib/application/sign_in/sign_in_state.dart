part of 'sign_in_cubit.dart';
// part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  SignInState._();

  factory SignInState({
    required SignInEntity entity,
    required bool isError,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> failureOrSucceedSignIn,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        entity: SignInEntity.empty(),
        isError: false,
        isSubmitting: false,
        failureOrSucceedSignIn: none(),
      );

  SignInState get unmodified => copyWith(
        isSubmitting: false,
        failureOrSucceedSignIn: none(),
      );

  bool? get error => isError;
  bool? get submitting => isSubmitting;

  String? get showEmailErrorMsg => isError ? entity.emailErrorMsg : null;
  String? get showPasswordErrorMsg => isError ? entity.passwordErrorMsg : null;
}

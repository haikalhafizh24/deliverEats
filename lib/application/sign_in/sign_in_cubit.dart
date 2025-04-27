import 'package:bloc/bloc.dart';
import 'package:deliver_eats/domain/auth/entities/signin_entity.dart';
import 'package:deliver_eats/domain/auth/i_auth_repository.dart';
import 'package:deliver_eats/domain/core/auth_failure.dart';
import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_cubit.freezed.dart';
part 'sign_in_state.dart';

@injectable
class SignInCubit extends Cubit<SignInState> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final IAuthRepository _authRepository;

  SignInCubit(this._authRepository) : super(SignInState.initial()) {
    emailController = TextEditingController()..addListener(onEmailChange);
    passwordController = TextEditingController()..addListener(onPasswordChange);
  }

  void onEmailChange() {
    emailInput(emailController.text);
  }

  void onPasswordChange() {
    passwordInput(passwordController.text);
  }

  void emailInput(String input) {
    emit(state.unmodified.copyWith.entity(email: input));
  }

  void passwordInput(String input) {
    emit(state.unmodified.copyWith.entity(password: input));
  }

  Future<void> submit() async {
    emit(state.unmodified.copyWith(isSubmitting: true));

    final failureOption = state.entity.failureOption;

    if (failureOption.isSome()) {
      // Form validation error
      emit(state.unmodified.copyWith(
        isError: true,
        isSubmitting: false,
      ));
      return;
    }

    // Form valid, try login
    final result = await _authRepository.signInManual(
        emailController.text, passwordController.text);

    emit(state.unmodified.copyWith(
      isSubmitting: false,
      failureOrSucceedSignIn: some(result),
    ));

    // Update UI based on result
    result.fold((failure) => emit(state.copyWith(isError: true)),
        (_) => emit(state.copyWith(isError: false)));
  }
}

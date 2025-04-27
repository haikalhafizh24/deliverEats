import 'package:deliver_eats/domain/core/form_failure.dart';
import 'package:fpdart/fpdart.dart';

class FormValidator {
  FormValidator._();

  static Either<FormFailure, Unit> emailValidator(String input) {
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (input.isEmpty) {
      return left(const FormFailure.empty());
    }
    if (!RegExp(emailRegex).hasMatch(input)) {
      return left(const FormFailure.invalidEmailAddress());
    }
    if (input.length > 50) {
      return left(const FormFailure.tooLong());
    }
    return right(unit);
  }

  static Either<FormFailure, Unit> passwordValidator(String input) {
    const passwordRegex =
        r"""^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+\-=\[\]{};\':"\\|,.<>\/?]).{8,}$""";

    if (input.isEmpty) {
      return left(const FormFailure.empty());
    }
    if (!RegExp(passwordRegex).hasMatch(input)) {
      return left(const FormFailure.invalidPassword());
    }
    if (input.length < 8) {
      return left(const FormFailure.tooShort());
    }
    return right(unit);
  }

  static Either<FormFailure, Unit> emptyValidator(String val) {
    if (val.isEmpty) {
      return left(const FormFailure.empty());
    }
    return right(unit);
  }

  static Either<FormFailure, Unit> customValidator({required bool validator}) {
    if (validator) {
      return left(const FormFailure.costumError());
    }
    return right(unit);
  }
}

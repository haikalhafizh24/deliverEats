import 'package:fpdart/fpdart.dart';
import 'package:deliver_eats/domain/core/form_failure.dart';

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

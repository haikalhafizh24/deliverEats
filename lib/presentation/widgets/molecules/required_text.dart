import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

class RequiredText extends StatelessWidget {
  const RequiredText({
    super.key,
    required this.title,
    this.required = true,
    this.color,
  });

  final String? title;
  final bool required;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            style: color != null
                ? context.customTextTheme.bodyLarge?.copyWith(
                    color: color,
                  )
                : context.customTextTheme.bodyLarge?.copyWith(
                    color: ColorConstant.black,
                  ),
            children: [
              TextSpan(
                text: title,
              ),
              TextSpan(
                  text: required ? " *" : "",
                  style: const TextStyle(color: Colors.red)),
            ],
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        UIHelper.verticalSpace(5),
      ],
    );
  }
}

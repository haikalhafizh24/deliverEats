import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/presentation/widgets/atoms/custom_checkbox.dart';
import 'package:deliver_eats/presentation/widgets/atoms/custom_radio_button.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

class RadioMenuItem extends StatelessWidget {
  final VoidCallback onTap;
  final bool status;
  final bool isRadio;
  final String title;
  final String price;
  const RadioMenuItem({
    super.key,
    required this.onTap,
    required this.isRadio,
    required this.price,
    required this.title,
    this.status = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              isRadio
                  ? CustomRadioButton(
                      onTap: onTap,
                      status: status,
                    )
                  : CustomCheckbox(
                      onTap: onTap,
                      status: status,
                    ),
              UIHelper.horizontalSpace(8),
              Text(
                title,
                style: textTheme.textSmRegular
                    .copyWith(color: ColorConstant.gray700),
              ),
            ],
          ),
          Text(
            price,
            style: textTheme.textSmSemibold.copyWith(
              color: ColorConstant.gray800,
            ),
          ),
        ],
      ),
    );
  }
}

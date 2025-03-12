import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

class BadgeMenu extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final bool isChoosen;
  const BadgeMenu({
    super.key,
    required this.onTap,
    required this.title,
    this.isChoosen = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: UIHelper.padding(
          vertical: 4,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: isChoosen ? ColorConstant.rose100 : ColorConstant.gray100,
          // border: Border.all(color: ColorConstant.gray300, width: 0.5),
          borderRadius: UIHelper.borderRadiusCircular(all: 24),
        ),
        child: Text(
          title,
          style: textTheme.textXsMedium.copyWith(
            color: isChoosen ? ColorConstant.rose700 : ColorConstant.gray500,
          ),
        ),
      ),
    );
  }
}

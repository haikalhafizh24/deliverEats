import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomChip extends StatelessWidget {
  final double text;
  final String icon;
  const CustomChip({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: UIHelper.padding(
        vertical: 2,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: UIHelper.borderRadiusCircular(
          all: 24,
        ),
        color: ColorConstant.warning100,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            width: 16,
          ),
          UIHelper.horizontalSpace(4),
          Text(
            '$text',
            style: textTheme.textXsMedium.copyWith(
              color: ColorConstant.warning600,
            ),
          )
        ],
      ),
    );
  }
}

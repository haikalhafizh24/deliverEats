import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.onTap,
    required this.status,
  });

  final VoidCallback onTap;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(24)),
      child: Container(
        margin: UIHelper.padding(all: 4),
        width: 20,
        height: 20,
        padding: UIHelper.padding(all: 2),
        decoration: BoxDecoration(
          color: status ? ColorConstant.rose50 : ColorConstant.gray100,
          shape: BoxShape.circle,
          border: Border.all(
              color: status ? ColorConstant.rose700 : ColorConstant.gray300,
              width: status ? 1.5 : 1),
        ),
        child: status
            ? Container(
                width: 8,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: ColorConstant.rose700,
                ),
              )
            : null,
      ),
    );
  }
}

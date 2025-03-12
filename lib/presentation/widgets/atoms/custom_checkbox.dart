import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
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
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: Container(
        margin: UIHelper.padding(all: 4),
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: UIHelper.borderRadiusCircular(
            all: 4,
          ),
          color: status ? ColorConstant.rose700 : ColorConstant.gray100,
          border: Border.all(
              color: status ? ColorConstant.rose700 : ColorConstant.gray300,
              width: status ? 1.5 : 1),
        ),
        child: status
            ? const Icon(
                Icons.check_rounded,
                color: ColorConstant.white,
                grade: 8,
              )
            : null,
      ),
    );
  }
}

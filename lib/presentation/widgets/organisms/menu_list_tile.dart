import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/presentation/widgets/molecules/custom_icon_button.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuListTile extends StatelessWidget {
  final String title;
  final String iconPath;
  final VoidCallback onTap;
  final String? trailingIconPath;
  final bool divider;

  const MenuListTile({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onTap,
    this.trailingIconPath,
    this.divider = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: UIHelper.padding(vertical: 8),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomIconButton(
                        ontap: onTap,
                        svgAssetPath: iconPath,
                        buttonHeight: 36,
                        buttonWidth: 36,
                        padding: 8,
                      ),
                      UIHelper.horizontalSpace(12),
                      Text(
                        title,
                        style: textTheme.textMdRegular.copyWith(
                          color: ColorConstant.gray900,
                        ),
                      ),
                    ],
                  ),
                  if (trailingIconPath != null)
                    SvgPicture.asset(
                      trailingIconPath!,
                      height: 20,
                    )
                ],
              ),
            ),
          ),
          Divider(
            color: divider ? ColorConstant.gray200 : Colors.transparent,
            thickness: 1,
            height: 1,
          ),
        ],
      ),
    );
  }
}

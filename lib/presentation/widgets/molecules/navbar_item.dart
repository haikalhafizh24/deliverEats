import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavbarItem extends StatelessWidget {
  final bool isActive;
  final String activeIcon;
  final String inActiveIcon;
  final String name;
  final VoidCallback ontap;

  const NavbarItem({
    super.key,
    required this.isActive,
    required this.activeIcon,
    required this.inActiveIcon,
    required this.name,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: ontap,
        child: AnimatedContainer(
          width: MediaQuery.of(context).size.width / 4,
          duration: const Duration(
            milliseconds: 300,
          ),
          padding: UIHelper.padding(
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: SvgPicture.asset(
                  isActive ? activeIcon : inActiveIcon,
                  key: ValueKey<bool>(isActive),
                  height: 24,
                ),
              ),
              UIHelper.verticalSpace(4),
              Text(
                name,
                style: textTheme.textSmRegular.copyWith(
                  color:
                      isActive ? ColorConstant.rose700 : ColorConstant.gray500,
                  fontWeight: isActive ? FontWeight.w800 : FontWeight.w200,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

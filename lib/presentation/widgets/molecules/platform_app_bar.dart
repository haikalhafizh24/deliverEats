import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/commons/assets_path.dart';
import 'package:deliver_eats/presentation/widgets/atoms/platform_widget.dart';
import 'package:deliver_eats/presentation/widgets/molecules/custom_icon_button.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformAppBar extends PlatformWidget<CupertinoNavigationBar, AppBar>
    implements PreferredSizeWidget {
  final Widget title;
  final Widget? leading;
  final PreferredSizeWidget? bottom;
  final Widget? action;
  final double? elevation;
  final Color? color;
  const PlatformAppBar({
    super.key,
    required this.title,
    this.leading,
    this.action,
    this.bottom,
    this.elevation,
    this.color,
  });

  @override
  Size get preferredSize => Size.fromHeight(UIHelper.setSp(70));

  @override
  CupertinoNavigationBar createIosWidget(BuildContext context) =>
      CupertinoNavigationBar(
        middle: title,
        leading: leading,
        trailing: action,
      );

  @override
  AppBar createAndroidWidget(BuildContext context) => AppBar(
        title: title,
        titleSpacing: 16,
        leadingWidth: 64,
        centerTitle: true,
        leading: leading ??
            Center(
              child: Padding(
                padding: UIHelper.padding(
                  left: 16,
                ),
                child: CustomIconButton(
                  ontap: () {
                    AutoRouter.of(context).maybePop();
                  },
                  svgAssetPath: AssetsPath.arrowLeftIcon,
                  buttonHeight: 48,
                  buttonWidth: 48,
                  padding: 8,
                ),
              ),
            ),
        actions: [
          if (action != null)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: action!,
            ),
        ],
        bottom: bottom,
        elevation: elevation ?? 0,
        backgroundColor: color,
      );
}

import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/commons/assets_path.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/constants.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/core/routes/app_router.gr.dart';
import 'package:deliver_eats/presentation/widgets/organisms/menu_list_tile.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Header
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 36,
                  backgroundImage: NetworkImage(Constants.profileImg),
                ),
                UIHelper.verticalSpace(8),
                Column(
                  children: [
                    Text(
                      'Eva Evelyn',
                      style: textTheme.textLgBold.copyWith(
                        color: ColorConstant.black,
                      ),
                    ),
                    Text(
                      'evaeve@gmail.com',
                      style: textTheme.textSmRegular.copyWith(
                        color: ColorConstant.gray700,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          UIHelper.verticalSpace(24),

          Column(
            children: [
              MenuListTile(
                title: 'Profile Information',
                iconPath: AssetsPath.userFillIcon,
                onTap: () {},
                trailingIconPath: AssetsPath.chevronRightIcon,
              ),
              MenuListTile(
                title: 'Saved Address',
                iconPath: AssetsPath.pinIcon,
                onTap: () {},
                trailingIconPath: AssetsPath.chevronRightIcon,
              ),
              MenuListTile(
                title: 'Payment Method',
                iconPath: AssetsPath.paymentFilledIcon,
                onTap: () {},
                trailingIconPath: AssetsPath.chevronRightIcon,
              ),
              MenuListTile(
                title: 'Give us Rating',
                iconPath: AssetsPath.starFilledIcon,
                onTap: () {},
                trailingIconPath: AssetsPath.chevronRightIcon,
                divider: false,
              ),
            ],
          ),

          UIHelper.verticalSpace(24),

          Column(
            children: [
              MenuListTile(
                title: 'Terms of Service',
                iconPath: AssetsPath.termsIcon,
                onTap: () {},
                trailingIconPath: AssetsPath.chevronRightIcon,
              ),
              MenuListTile(
                title: 'Privacy Policy',
                iconPath: AssetsPath.privacyIcon,
                onTap: () {},
                trailingIconPath: AssetsPath.chevronRightIcon,
              ),
              MenuListTile(
                title: 'Help',
                iconPath: AssetsPath.helpIcon,
                onTap: () {},
                trailingIconPath: AssetsPath.chevronRightIcon,
                divider: false,
              ),
            ],
          ),

          UIHelper.verticalSpace(24),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const LoginRoute());
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  ColorConstant.rose50,
                ),
              ),
              child: Text(
                'Logout',
                style:
                    textTheme.textSmBold.copyWith(color: ColorConstant.rose700),
              ),
            ),
          ),
        ],
      ),
    ))));
  }
}

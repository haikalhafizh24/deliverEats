import 'dart:core';

import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/commons/assets_path.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/constants.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/presentation/widgets/molecules/custom_icon_button.dart';
import 'package:deliver_eats/presentation/widgets/organisms/product_card_grid.dart';
import 'package:deliver_eats/presentation/widgets/organisms/restaurant_card.dart';
import 'package:deliver_eats/presentation/widgets/organisms/text_form_field.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Header

            Padding(
              padding: UIHelper.padding(
                left: 16,
                right: 16,
                top: 16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(Constants.profileImg),
                  ),
                  UIHelper.horizontalSpace(12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Eva',
                          style: textTheme.textSmSemibold.copyWith(
                            color: ColorConstant.gray700,
                          ),
                        ),
                        Text(
                          'evlynEva@gmail.com',
                          style: textTheme.textXsRegular.copyWith(
                            color: ColorConstant.gray500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  UIHelper.horizontalSpace(12),
                  CustomIconButton(
                    ontap: () {},
                    svgAssetPath: AssetsPath.notifIcon,
                    buttonHeight: 48,
                    buttonWidth: 48,
                    padding: 8,
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(12),

            // User Location

            Container(
              margin: UIHelper.padding(
                left: 16,
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: UIHelper.borderRadiusCircular(
                  all: 24,
                ),
                color: ColorConstant.rose100,
              ),
              padding: UIHelper.padding(
                left: 4,
                right: 12,
                top: 4,
                bottom: 4,
              ),
              child: Row(
                children: [
                  CustomIconButton(
                    ontap: () {},
                    svgAssetPath: AssetsPath.pinIcon,
                    buttonHeight: 36,
                    buttonWidth: 36,
                    padding: 6,
                  ),
                  UIHelper.horizontalSpace(12),
                  Expanded(
                    child: Text(
                      'Beukenlaan 88, 3061 Rotterdam',
                      maxLines: 1,
                      style: textTheme.textXsMedium.copyWith(
                        color: ColorConstant.gray900,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  UIHelper.horizontalSpace(12),
                  Text(
                    'Change',
                    style: textTheme.textXsSemibold.copyWith(
                      color: ColorConstant.rose700,
                    ),
                  ),
                ],
              ),
            ),

            // Tagline

            UIHelper.verticalSpace(12),
            Padding(
              padding: UIHelper.padding(
                left: 16,
                right: 16,
              ),
              child: Text(
                'Discover Delicious, Right Next Door!',
                style: textTheme.displayMdSemibold.copyWith(
                  color: ColorConstant.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            UIHelper.verticalSpace(12),

            // Search Field

            Padding(
              padding: UIHelper.padding(
                left: 16,
                right: 16,
              ),
              child: TextFormFieldCustom(
                hintText: 'Search baverages...',
                preffixIcon: SvgPicture.asset(AssetsPath.searchIcon),
              ),
            ),

            // Banner

            UIHelper.verticalSpace(12),
            Padding(
              padding: UIHelper.padding(
                left: 16,
                right: 16,
              ),
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 160,
                    child: ClipRRect(
                      borderRadius: UIHelper.borderRadiusCircular(all: 24),
                      child: Image.network(
                        Constants.bannerImg,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 160,
                    padding: UIHelper.padding(
                      all: 16,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        // begin: Alignment.centerLeft,
                        // end: Alignment(0.67, 0),
                        begin: Alignment(0, -0.11),
                        end: Alignment(0.99, 0.11),
                        colors: [Color(0xFFA10F42), Color(0x003B0518)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: UIHelper.borderRadiusCircular(all: 24),
                      ),
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Homemade \nMeals',
                              style: textTheme.displaySmMedium,
                            ),
                            Text(
                              'Anytime Ease, Simply Served',
                              style: textTheme.textSmRegular,
                            ),
                          ],
                        ),
                        CustomIconButton(
                          ontap: () {},
                          svgAssetPath: AssetsPath.arrowCircleRightIcon,
                          buttonHeight: 36,
                          buttonWidth: 36,
                          padding: 6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Local Favorite

            UIHelper.verticalSpace(12),
            Padding(
              padding: UIHelper.padding(
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Local Favorite',
                    style: textTheme.textLgSemibold.copyWith(
                      color: ColorConstant.black,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: textTheme.textSmSemibold.copyWith(
                        color: ColorConstant.rose700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(8),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    12,
                    (index) => Padding(
                          padding: EdgeInsets.only(
                            left: index == 0 ? 16 : 6,
                            right: index == 11 ? 16 : 6,
                          ),
                          child: Hero(
                            tag: 'tag $index',
                            child: RestaurantCard(
                                image: Constants.bannerImg,
                                name: 'The Spice Garden',
                                rating: 4.6,
                                distance: 2.3),
                          ),
                        )),
              ),
            ),

            // Recommended For You

            UIHelper.verticalSpace(12),
            Padding(
              padding: UIHelper.padding(
                horizontal: 16,
              ),
              child: Text(
                'Recommended For You',
                style: textTheme.textLgSemibold.copyWith(
                  color: ColorConstant.black,
                ),
              ),
            ),
            UIHelper.verticalSpace(8),

            Padding(
              padding: UIHelper.padding(
                horizontal: 16, bottom: 12,
                // bottom: 16,
              ),
              child: const Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 12,
                runSpacing: 12,
                children: [
                  ProductCardGrid(),
                  ProductCardGrid(),
                  ProductCardGrid(),
                  ProductCardGrid(),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

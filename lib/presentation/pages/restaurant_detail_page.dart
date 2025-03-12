import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/commons/assets_path.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/constants.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/presentation/widgets/molecules/badge.dart';
import 'package:deliver_eats/presentation/widgets/molecules/custom_icon_button.dart';
import 'package:deliver_eats/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:deliver_eats/presentation/widgets/organisms/detailed_product_card.dart';
import 'package:deliver_eats/presentation/widgets/organisms/text_form_field.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class RestaurantDetailPage extends StatelessWidget {
  const RestaurantDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // main Appbar

        appBar: PlatformAppBar(
          title: Column(
            children: [
              Text(
                'Coffee Corner',
                style: textTheme.textLgBold.copyWith(
                  color: ColorConstant.black,
                ),
              ),
              Text(
                'Hazelaarplein 5, 5038 Tilburg',
                style: textTheme.textXsRegular.copyWith(
                  color: ColorConstant.black,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,
              ),
            ],
          ),
          action: Center(
            child: Padding(
              padding: UIHelper.padding(
                right: 8,
              ),
              child: CustomIconButton(
                ontap: () {},
                svgAssetPath: AssetsPath.starLineIcon,
                buttonHeight: 48,
                buttonWidth: 48,
                padding: 8,
              ),
            ),
          ),
        ),

        // Custom Sliver Appbar

        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 260,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Hero(
                      tag: 'tag 1',
                      child: Image.network(
                        Constants.bannerImg,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Positioned(
                        bottom: 16,
                        left: 16,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 32,
                          decoration: BoxDecoration(
                            borderRadius:
                                UIHelper.borderRadiusCircular(all: 12),
                            color: ColorConstant.white,
                          ),
                          padding: UIHelper.padding(
                            vertical: 8,
                            horizontal: 12,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    AssetsPath.starFillIcon,
                                    height: 20,
                                  ),
                                  UIHelper.horizontalSpace(4),
                                  Text(
                                    '4.7',
                                    style: textTheme.textSmSemibold.copyWith(
                                      color: ColorConstant.warning600,
                                    ),
                                  ),
                                  UIHelper.horizontalSpace(
                                    4,
                                  ),
                                  Text(
                                    '(431 Reviews)',
                                    style: textTheme.textSmRegular
                                        .copyWith(color: ColorConstant.gray600),
                                  )
                                ],
                              ),
                              Text(
                                "Rp8.000 - Rp75.000",
                                style: textTheme.textSmSemibold.copyWith(
                                  color: ColorConstant.black,
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),

            // Search Bar

            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverPersistentHeaderDelegate(
                minHeight: 72,
                maxHeight: 72,
                child: Container(
                  color: ColorConstant.white,
                  child: Padding(
                    padding: UIHelper.padding(
                      top: 12,
                      horizontal: 16,
                    ),
                    child: TextFormFieldCustom(
                      hintText: 'Search baverages...',
                      preffixIcon: SvgPicture.asset(AssetsPath.searchIcon),
                    ),
                  ),
                ),
              ),
            ),

            // Tab Menu

            SliverPersistentHeader(
              // floating: true,
              pinned: true,
              delegate: _SliverPersistentHeaderDelegate(
                  minHeight: 60,
                  maxHeight: 72,
                  child: Container(
                    color: ColorConstant.white,
                    child: SingleChildScrollView(
                      padding: UIHelper.padding(top: 8),
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: UIHelper.padding(
                          horizontal: 12,
                        ),
                        child: Wrap(
                            direction: Axis.horizontal,
                            spacing: 12,
                            children: [
                              BadgeMenu(
                                onTap: () {},
                                title: 'All',
                                isChoosen: true,
                              ),
                              BadgeMenu(
                                onTap: () {},
                                title: 'Coffee',
                                isChoosen: false,
                              ),
                              BadgeMenu(
                                onTap: () {},
                                title: 'Non Coffe',
                                isChoosen: false,
                              ),
                              BadgeMenu(
                                onTap: () {},
                                title: 'Breakfast',
                                isChoosen: false,
                              ),
                              BadgeMenu(
                                onTap: () {},
                                title: 'Brunch',
                                isChoosen: false,
                              ),
                            ]),
                      ),
                    ),
                  )),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const DetailedProductCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverPersistentHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverPersistentHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

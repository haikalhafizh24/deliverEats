import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/commons/assets_path.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/constants.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/core/commons/theme.dart';
import 'package:deliver_eats/core/routes/app_router.gr.dart';
import 'package:deliver_eats/presentation/widgets/molecules/custom_icon_button.dart';
import 'package:deliver_eats/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:deliver_eats/presentation/widgets/molecules/radio_menu_item.dart';
import 'package:deliver_eats/presentation/widgets/organisms/text_form_field.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text("Product Detail"),
      ),
      bottomNavigationBar: Container(
        padding: UIHelper.padding(
          horizontal: 16,
          vertical: 12,
        ),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    ColorConstant.rose50,
                  ),
                ),
                child: Text(
                  'Add to cart',
                  style: textTheme.textXsSemibold
                      .copyWith(color: ColorConstant.rose700),
                ),
              ),
            ),
            UIHelper.horizontalSpace(12),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(
                    const OrderSummaryRoute(),
                  );
                },
                child: Text(
                  'Checkout',
                  style: textTheme.textXsSemibold
                      .copyWith(color: ColorConstant.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * (2 / 3) + 150,
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: AspectRatio(
                      aspectRatio: 3 / 2,
                      child: Image.network(
                        Constants.bannerImg,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 0,
                    child: Container(
                      padding: UIHelper.padding(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        boxShadow: AppTheme.defaultBoxShadow,
                        color: ColorConstant.white,
                        borderRadius: UIHelper.borderRadiusCircular(
                          all: 12,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Salmon Sushi Roll',
                                    style: textTheme.textLgRegular.copyWith(
                                      color: ColorConstant.black,
                                    ),
                                  ),
                                  Text(
                                    'Rp35.000',
                                    style: textTheme.textMdBold.copyWith(
                                      color: ColorConstant.black,
                                    ),
                                  ),
                                ],
                              ),
                              CustomIconButton(
                                ontap: () {},
                                svgAssetPath: AssetsPath.starLineIcon,
                                buttonHeight: 40,
                                buttonWidth: 40,
                                padding: 8,
                              ),
                            ],
                          ),
                          UIHelper.verticalSpace(8),
                          Text(
                            'Egg Martabak is a type of Indonesian street food, similar to a thick pancake filled with eggs, green onions, and meat, often served with a side of pickled vegetables or a spicy sauce.',
                            style: textTheme.textXsRegular.copyWith(
                              color: ColorConstant.gray700,
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 4,
                          ),
                          UIHelper.verticalSpace(8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    AssetsPath.starFillIcon,
                                    height: 16,
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
                                    '(36 Reviews)',
                                    style: textTheme.textSmRegular
                                        .copyWith(color: ColorConstant.gray600),
                                  )
                                ],
                              ),
                              Text(
                                "87 Sold",
                                style: textTheme.textSmRegular.copyWith(
                                  color: ColorConstant.gray500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            UIHelper.verticalSpace(12),
            Padding(
              padding: UIHelper.padding(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Eggs Amount',
                        style: textTheme.textSmSemibold.copyWith(
                          color: ColorConstant.black,
                        ),
                      ),
                      UIHelper.horizontalSpace(8),
                      Text(
                        '(Must be selected)',
                        style: textTheme.textXsRegular.copyWith(
                          color: ColorConstant.gray500,
                        ),
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(4),
                  RadioMenuItem(
                    onTap: () {},
                    isRadio: true,
                    price: 'Free',
                    title: '2 Eggs',
                  ),
                  RadioMenuItem(
                    status: true,
                    onTap: () {},
                    isRadio: true,
                    price: '+ Rp12.000',
                    title: '3 Eggs',
                  ),
                  RadioMenuItem(
                    onTap: () {},
                    isRadio: true,
                    price: '+ Rp18.000',
                    title: '4 Eggs',
                  ),
                ],
              ),
            ),
            Padding(
              padding: UIHelper.padding(horizontal: 16),
              child: UIHelper.divider(
                color: ColorConstant.gray200,
              ),
            ),
            Padding(
              padding: UIHelper.padding(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sauce',
                        style: textTheme.textSmSemibold.copyWith(
                          color: ColorConstant.black,
                        ),
                      ),
                      UIHelper.horizontalSpace(8),
                      Text(
                        '(Optional)',
                        style: textTheme.textXsRegular.copyWith(
                          color: ColorConstant.gray500,
                        ),
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(4),
                  RadioMenuItem(
                    onTap: () {},
                    isRadio: false,
                    price: 'Free',
                    title: 'Sauce',
                  ),
                  RadioMenuItem(
                    onTap: () {},
                    isRadio: false,
                    price: '+ Rp3.000',
                    title: 'Extra Sauce',
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(12),
            Padding(
              padding: UIHelper.padding(horizontal: 16),
              child: TextFormFieldCustom(
                hintText: 'Add note...',
                preffixIcon: SvgPicture.asset(
                  AssetsPath.fileIcon,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

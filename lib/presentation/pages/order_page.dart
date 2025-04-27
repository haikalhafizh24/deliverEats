import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/presentation/widgets/molecules/badge.dart';
import 'package:deliver_eats/presentation/widgets/organisms/product_cart.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

import '../widgets/molecules/platform_app_bar.dart';

@RoutePage()
class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PlatformAppBar(
          title: Text('Order History'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: UIHelper.padding(
                vertical: 16,
                horizontal: 16,
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Coffee Corner',
                            style: textTheme.textSmBold.copyWith(
                              color: ColorConstant.black,
                            ),
                          ),
                          BadgeMenu(
                            onTap: () {},
                            title: 'Sedang Diantar',
                            isChoosen: true,
                          ),
                        ],
                      ),
                      UIHelper.verticalSpace(4),
                      const ProductCart(
                        title: 'Salmon Sushi Roll',
                        price: 60000,
                        ammount: 2,
                        cart: false,
                        divider: false,
                      ),
                      UIHelper.verticalSpace(4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: textTheme.textMdSemibold.copyWith(
                              color: ColorConstant.black,
                            ),
                          ),
                          Text(
                            'Rp 196.000',
                            style: textTheme.textMdSemibold.copyWith(
                              color: ColorConstant.black,
                            ),
                          ),
                        ],
                      ),
                      UIHelper.verticalSpace(8),
                      const Divider(
                        color:
                            // divider?
                            ColorConstant.gray200
                        // : Colors.transparent
                        ,
                        thickness: 1,
                        height: 1,
                      ),
                    ],
                  )
                ],
              )),
        ));
  }
}

// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:deliver_eats/presentation/widgets/organisms/product_cart.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: UIHelper.padding(
                  all: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Cart

                    Text(
                      'Coffee Corner',
                      style: textTheme.textSmBold.copyWith(
                        color: ColorConstant.black,
                      ),
                    ),
                    UIHelper.verticalSpace(8),
                    const ProductCart(
                      title: 'Rendang Batua',
                      price: 23000,
                      ammount: 3,
                    ),
                    const ProductCart(
                      title: 'Salmon Sushi Roll ',
                      price: 45000,
                      ammount: 1,
                      additional: 'Mentai sauce',
                    ),
                    const ProductCart(
                      title: 'Rendang Batua',
                      price: 23000,
                      ammount: 3,
                    ),
                    const ProductCart(
                      title: 'Rendang Batua',
                      price: 23000,
                      ammount: 3,
                    ),
                    const ProductCart(
                      title: 'Salmon Sushi Roll ',
                      price: 45000,
                      ammount: 1,
                      additional: 'Mentai sauce',
                    ),
                    const ProductCart(
                      title: 'Chicken Egg Martabak',
                      price: 32000,
                      ammount: 1,
                      additional: '4 eggs, Extra sauce',
                      divider: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 68,
            decoration: BoxDecoration(
              color: ColorConstant.rose700.withOpacity(0.95),
            ),
            // margin: UIHelper.padding(all: 12),
            child: Padding(
              padding: UIHelper.padding(vertical: 8, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total',
                        style: textTheme.textXsSemibold.copyWith(
                          color: ColorConstant.gray200,
                        ),
                      ),
                      Text(
                        'Rp75.000',
                        style: textTheme.textMdSemibold.copyWith(
                          color: ColorConstant.white,
                        ),
                      ),
                    ],
                  ),
                  UIHelper.horizontalSpace(12),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(ColorConstant.white),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Checkout',
                      style: textTheme.textSmSemibold
                          .copyWith(color: ColorConstant.rose700),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

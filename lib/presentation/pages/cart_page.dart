import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Cart Page',
          style: textTheme.textLgBold.copyWith(
            color: ColorConstant.black,
          ),
        ),
      ),
    );
  }
}

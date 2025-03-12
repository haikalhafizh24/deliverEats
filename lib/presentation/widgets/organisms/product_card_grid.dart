import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/commons/assets_path.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/constants.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/core/routes/app_router.gr.dart';
import 'package:deliver_eats/presentation/widgets/molecules/custom_chip.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

class ProductCardGrid extends StatelessWidget {
  const ProductCardGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = (screenWidth - 50) / 2;

    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(const ProductDetailRoute());
      },
      child: SizedBox(
        width: cardWidth,
        // height: 264,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: UIHelper.borderRadiusCircular(all: 12),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      Constants.bannerImg,
                      fit: BoxFit.cover,
                      width: cardWidth,
                      // width: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: CustomChip(
                    text: 4.5,
                    icon: AssetsPath.starFillIcon,
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(4),
            Text(
              'Salmon Sushi Roll',
              style: textTheme.textSmSemibold.copyWith(
                color: ColorConstant.gray700,
              ),
            ),
            Text(
              'Rp25.000',
              style: textTheme.textMdBold.copyWith(
                color: ColorConstant.gray900,
              ),
            ),
            Text(
              '2.2 km • 89 Sold',
              style: textTheme.textXsRegular.copyWith(
                color: ColorConstant.gray500,
              ),
            ),
            // UIHelper.verticalSpace(2),
            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       AutoRouter.of(context).push(const ProductDetailRoute());
            //     },
            //     child: Text(
            //       'Add to cart',
            //       style: textTheme.textXsSemibold
            //           .copyWith(color: ColorConstant.white),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

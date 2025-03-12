import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/commons/assets_path.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/constants.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/core/routes/app_router.gr.dart';
import 'package:deliver_eats/presentation/widgets/molecules/custom_chip.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

class DetailedProductCard extends StatelessWidget {
  const DetailedProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UIHelper.padding(
        horizontal: 16,
        bottom: 12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: UIHelper.borderRadiusCircular(all: 12),
                child: Image.network(
                  Constants.bannerImg,
                  fit: BoxFit.cover,
                  width: 120,
                  height: 120,
                  // width: double.infinity,
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
          UIHelper.horizontalSpace(8),
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dragon Fruit Smoothie Dragon Fruit Smoothie',
                      style: textTheme.textMdSemibold.copyWith(
                        color: ColorConstant.gray800,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                    Text(
                      'A classic sushi roll made with fresh salmon, typically rolled with sushi ',
                      maxLines: 1,
                      style: textTheme.textXsRegular.copyWith(
                        color: ColorConstant.gray500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                UIHelper.verticalSpace(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rp25.000',
                          style: textTheme.textLgBold.copyWith(
                            color: ColorConstant.black,
                          ),
                        ),
                        Text(
                          '34 sold',
                          style: textTheme.textXsRegular.copyWith(
                            color: ColorConstant.gray500,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        AutoRouter.of(context).push(const ProductDetailRoute());
                      },
                      child: Text(
                        'Add to cart',
                        style: textTheme.textXsSemibold
                            .copyWith(color: ColorConstant.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

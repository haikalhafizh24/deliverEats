import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/commons/assets_path.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/core/routes/app_router.gr.dart';
import 'package:deliver_eats/presentation/widgets/molecules/custom_chip.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String image;
  final double rating;
  final double distance;

  const RestaurantCard({
    super.key,
    required this.image,
    required this.name,
    required this.rating,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          AutoRouter.of(context).push(const RestaurantDetailRoute());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 218,
              height: 145,
              child: ClipRRect(
                borderRadius: UIHelper.borderRadiusCircular(all: 12),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            UIHelper.verticalSpace(4),
            Text(
              name,
              style: textTheme.textMdBold.copyWith(
                color: ColorConstant.gray900,
                overflow: TextOverflow.clip,
              ),
              maxLines: 1,
            ),
            UIHelper.verticalSpace(4),
            Row(
              children: [
                CustomChip(
                  text: rating,
                  icon: AssetsPath.starFillIcon,
                ),
                UIHelper.horizontalSpace(8),
                Text(
                  '$distance km',
                  style: textTheme.textXsRegular.copyWith(
                    color: ColorConstant.gray500,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

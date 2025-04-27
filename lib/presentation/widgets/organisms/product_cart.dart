import 'package:deliver_eats/core/commons/assets_path.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/constants.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCart extends StatelessWidget {
  final String title;
  final String additional;
  final int price;
  final int ammount;
  final String note;
  final bool divider;
  final bool cart;

  const ProductCart({
    super.key,
    required this.title,
    required this.price,
    required this.ammount,
    this.additional = '',
    this.note = '',
    this.divider = true,
    this.cart = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: UIHelper.padding(
            vertical: 8,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: UIHelper.borderRadiusCircular(all: 8),
                    child: Image.network(
                      Constants.bannerImg,
                      fit: BoxFit.cover,
                      width: UIHelper.setSp(80),
                      height: UIHelper.setSp(80),
                    ),
                  ),
                  UIHelper.horizontalSpace(8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: textTheme.textSmMedium.copyWith(
                                color: ColorConstant.gray900,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 2,
                            ),
                            Text(
                              additional,
                              // maxLines: 1,
                              style: textTheme.textXsRegular.copyWith(
                                color: ColorConstant.gray500,
                                // overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rp$price',
                              style: textTheme.textMdBold.copyWith(
                                color: ColorConstant.black,
                              ),
                            ),
                            cart
                                ? SizedBox(
                                    width: 120,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      ColorConstant.rose50)),
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.remove,
                                            color: ColorConstant.rose700,
                                            // color: ColorConstant.white,
                                          ),
                                        ),
                                        Text(
                                          '$ammount',
                                          style: textTheme.textSmRegular
                                              .copyWith(
                                                  color: ColorConstant.black),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add_rounded,
                                            // color: ColorConstant.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              note.isNotEmpty
                  ? Container(
                      margin: UIHelper.padding(top: 8),
                      padding: UIHelper.padding(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: UIHelper.borderRadiusCircular(all: 8),
                        border: Border.all(
                          width: 1,
                          color: ColorConstant.gray200,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            AssetsPath.fileIcon,
                            width: 20,
                          ),
                          UIHelper.horizontalSpace(8),
                          Expanded(
                            child: Text(
                              note,
                              style: textTheme.textSmRegular.copyWith(
                                color: ColorConstant.gray500,
                              ),
                            ),
                          ),
                          UIHelper.horizontalSpace(12),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Edit',
                                style: textTheme.textSmSemibold,
                              )),
                        ],
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
        Divider(
          color: divider ? ColorConstant.gray200 : Colors.transparent,
          thickness: 1,
          height: 1,
        ),
      ],
    );
  }
}

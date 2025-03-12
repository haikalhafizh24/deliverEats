import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/commons/assets_path.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/constants.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/presentation/widgets/molecules/custom_icon_button.dart';
import 'package:deliver_eats/presentation/widgets/molecules/dashed_border_container.dart';
import 'package:deliver_eats/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class OrderSummaryPage extends StatelessWidget {
  const OrderSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text('Order Summary'),
      ),
      bottomNavigationBar: Container(
        padding: UIHelper.padding(
          horizontal: 16,
          vertical: 12,
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Confirm Order',
            style:
                textTheme.textXsSemibold.copyWith(color: ColorConstant.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: UIHelper.padding(bottom: 8),
        child: Column(
          children: [
            Container(
              margin: UIHelper.padding(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Cart

                  Text(
                    'Coffee Corner',
                    style: textTheme.textSmSemibold.copyWith(
                      color: ColorConstant.black,
                    ),
                  ),
                  UIHelper.verticalSpace(8),
                  const ProductCart(
                    title: 'Rendang Batua',
                    price: 23000,
                    ammount: 3,
                  ),
                  UIHelper.divider(
                    height: 24,
                    color: ColorConstant.gray200,
                  ),
                  const ProductCart(
                    title: 'Salmon Sushi Roll ',
                    price: 45000,
                    ammount: 1,
                    note: 'Extra wasabi on the side ',
                    additional: 'Mentai sauce',
                  ),
                  UIHelper.divider(
                    height: 24,
                    color: ColorConstant.gray200,
                  ),
                  const ProductCart(
                    title: 'Chicken Egg Martabak',
                    price: 32000,
                    ammount: 1,
                    additional: '4 eggs, Extra sauce',
                    note: 'No green onions on martabak',
                  ),

                  // Address

                  UIHelper.verticalSpace(8),
                  Text(
                    'Address',
                    style: textTheme.textSmSemibold.copyWith(
                      color: ColorConstant.black,
                    ),
                  ),
                  UIHelper.verticalSpace(8),
                  Container(
                    padding: UIHelper.padding(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: UIHelper.borderRadiusCircular(all: 8),
                      gradient: const LinearGradient(
                        begin: Alignment(-1.00, 0.05),
                        end: Alignment(1, -0.05),
                        colors: [
                          Color(0xE8FFC7D7),
                          Color(0xFFFEF1F2),
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        CustomIconButton(
                          ontap: () {},
                          svgAssetPath: AssetsPath.pinIcon,
                          buttonHeight: 40,
                          buttonWidth: 40,
                          padding: 8,
                        ),
                        UIHelper.horizontalSpace(8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Home',
                                style: textTheme.textSmBold
                                    .copyWith(color: ColorConstant.black),
                              ),
                              Text(
                                'Beukenlaan 88, 3061 Rotterdam',
                                style: textTheme.textXsRegular.copyWith(
                                  color: ColorConstant.gray500,
                                ),
                              )
                            ],
                          ),
                        ),
                        UIHelper.horizontalSpace(8),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Change',
                              style: textTheme.textSmSemibold,
                            )),
                      ],
                    ),
                  ),

                  // Payment Details

                  UIHelper.verticalSpace(8),
                  Text(
                    'Payment Details',
                    style: textTheme.textSmSemibold.copyWith(
                      color: ColorConstant.black,
                    ),
                  ),
                  UIHelper.verticalSpace(8),
                  Container(
                    padding: UIHelper.padding(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: UIHelper.borderRadiusCircular(all: 8),
                      color: ColorConstant.gray100,
                    ),
                    child: Row(children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Eve Evelyn',
                              style: textTheme.textSmBold
                                  .copyWith(color: ColorConstant.black),
                            ),
                            Text(
                              '**** **** **** 0876',
                              style: textTheme.textXsRegular.copyWith(
                                color: ColorConstant.gray500,
                              ),
                            )
                          ],
                        ),
                      ),
                      UIHelper.horizontalSpace(8),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Change',
                            style: textTheme.textSmSemibold.copyWith(
                              color: ColorConstant.blue700,
                            ),
                          )),
                    ]),
                  ),
                  UIHelper.verticalSpace(8),
                  DashedBorderContainer(
                    color: ColorConstant.gray300,
                    strokeWidth: 2,
                    gap: 4,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: UIHelper.padding(
                        vertical: 6,
                        horizontal: 12,
                      ),
                      color: ColorConstant.gray50,
                      child: Row(children: [
                        SvgPicture.asset(
                          AssetsPath.saleIcon,
                          width: 20,
                        ),
                        UIHelper.horizontalSpace(8),
                        Expanded(
                          child: Text(
                            'Discount Voucher',
                            style: textTheme.textSmRegular
                                .copyWith(color: ColorConstant.gray700),
                          ),
                        ),
                        UIHelper.horizontalSpace(8),
                        Text(
                          '4 Available',
                          style: textTheme.textXsRegular
                              .copyWith(color: ColorConstant.success600),
                        ),
                      ]),
                    ),
                  ),
                  UIHelper.verticalSpace(8),
                  Container(
                    padding: UIHelper.padding(all: 12),
                    decoration: BoxDecoration(
                        borderRadius: UIHelper.borderRadiusCircular(all: 8),
                        border: Border.all(color: ColorConstant.gray200)),
                    child: Column(
                      children: [
                        const _RowItem(
                          title: 'Total price',
                          amount: 'Rp180.000',
                        ),
                        UIHelper.verticalSpace(4),
                        const _RowItem(
                          title: 'Delivery Fee',
                          amount: 'Rp14.000',
                        ),
                        UIHelper.verticalSpace(4),
                        const _RowItem(
                          title: 'Service',
                          amount: 'Rp2.000',
                        ),
                        UIHelper.verticalSpace(4),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _RowItem extends StatelessWidget {
  final String title;
  final String amount;
  const _RowItem({
    required this.amount,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: textTheme.textXsRegular.copyWith(
              color: ColorConstant.gray500,
            ),
          ),
        ),
        Text(
          amount,
          style: textTheme.textXsSemibold.copyWith(
            color: ColorConstant.gray800,
          ),
        ),
      ],
    );
  }
}

Widget _buildRow(String label, String value, {bool isTotal = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        label,
        style: TextStyle(
          fontSize: isTotal ? 18 : 16,
          fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
          color: Colors.black87,
        ),
      ),
      Text(
        value,
        style: TextStyle(
          fontSize: isTotal ? 18 : 16,
          fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
          color: Colors.black87,
        ),
      ),
    ],
  );
}

class ProductCart extends StatelessWidget {
  final String title;
  final String additional;
  final int price;
  final int ammount;
  final String note;
  const ProductCart({
    super.key,
    required this.title,
    required this.price,
    required this.ammount,
    this.additional = '',
    this.note = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        style: textTheme.textSmSemibold.copyWith(
                          color: ColorConstant.gray800,
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
                      SizedBox(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
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
                                  .copyWith(color: ColorConstant.black),
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
                      ),
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
    );
  }
}

import 'package:deliver_eats/core/commons/assets_path.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/presentation/widgets/molecules/navbar_item.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) ontap;
  const CustomBottomNavigationBar(
      {super.key, required this.currentIndex, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: UIHelper.padding(horizontal: 16),
      height: 92,
      decoration: const BoxDecoration(
        color: ColorConstant.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(24, 120, 120, 120),
            blurRadius: 4.8,
            offset: Offset(0, -1),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavbarItem(
            isActive: currentIndex == 0,
            activeIcon: AssetsPath.homeFillIcon,
            inActiveIcon: AssetsPath.homeLineIcon,
            name: 'Home',
            ontap: () => ontap(0),
          ),
          NavbarItem(
            isActive: currentIndex == 1,
            activeIcon: AssetsPath.cartFillIcon,
            inActiveIcon: AssetsPath.cartLineIcon,
            name: 'Cart',
            ontap: () => ontap(1),
          ),
          NavbarItem(
            isActive: currentIndex == 2,
            activeIcon: AssetsPath.clockFillIcon,
            inActiveIcon: AssetsPath.clockLineIcon,
            name: 'Order',
            ontap: () => ontap(2),
          ),
          NavbarItem(
            isActive: currentIndex == 3,
            activeIcon: AssetsPath.userFillIcon,
            inActiveIcon: AssetsPath.userLineIcon,
            name: 'Profile',
            ontap: () => ontap(3),
          ),
        ],
      ),
    );
  }
}

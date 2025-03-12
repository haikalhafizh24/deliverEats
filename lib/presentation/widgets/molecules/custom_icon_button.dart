import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback ontap;
  final String svgAssetPath;
  final double buttonHeight;
  final double buttonWidth;
  final double padding;

  const CustomIconButton({
    super.key,
    required this.ontap,
    required this.svgAssetPath,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorConstant.white,
              border: Border.all(
                width: 1,
                color: ColorConstant.gray200,
              ),
              borderRadius: UIHelper.borderRadiusCircular(
                all: 24,
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: SvgPicture.asset(
                svgAssetPath,
              ),
            ),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: ColorConstant.gray200
                    .withOpacity(0.4), // Customize splash color
                highlightColor: ColorConstant.white
                    .withOpacity(0.1), // Customize highlight color
                borderRadius: BorderRadius.circular(
                    24), // Should match container's border radius
                onTap: ontap,
                child: Container(), // Empty container to fill the space
              ),
            ),
          ),
        ],
      ),
    );
  }
}

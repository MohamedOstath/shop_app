import 'package:shop_app/core/constants.dart';
import 'package:shop_app/core/resources/manager_text_styles.dart';
import 'package:flutter/material.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_font_sizes.dart';
import '../resources/manager_font_weight.dart';
import '../resources/manager_height.dart';
import '../resources/manager_strings.dart';
import '../resources/manager_width.dart';

class BaseButton extends StatelessWidget {
  final int? spacerFlex;
  final String? title;
  final bool isVisibleIcon;
  final double? width;
  final double? height;
  final Color bgColor;
  final double elevation;
  void Function() onPressed;

  TextStyle? textStyle = getRegularTextStyle(
    fontSize: ManagerFontSizes.s16,
    color: ManagerColors.white,
  );

  BaseButton({
    super.key,
    this.title,
    this.isVisibleIcon = Constants.baseButtonVisibleIcon,
    this.width,
    this.height,
    this.bgColor = ManagerColors.primaryColor,
    this.textStyle,
    this.elevation = Constants.baseButtonElevation,
    this.spacerFlex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: bgColor,
        minimumSize: Size(
          width ?? ManagerWidth.w64,
          height ?? ManagerHeight.h50,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(
            flex: spacerFlex ?? Constants.baseButtonFirstSpacerFlex,
          ),
          Text(
            title ?? ManagerStrings.start,
            style: textStyle,
          ),
          Spacer(
            flex: spacerFlex ?? Constants.baseButtonSecondSpacerFlex,
          ),
          Visibility(
            visible: isVisibleIcon,
            child: Icon(
              Icons.arrow_forward,
              color: ManagerColors.white,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:astra_admin_app/presentation/core/theming/colors.dart';
import 'package:astra_admin_app/presentation/core/theming/gradients.dart';
import 'package:astra_admin_app/presentation/core/theming/icons/svg_icon.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, this.logoWithText = false}) : super(key: key);

  final bool logoWithText;

  @override
  Widget build(BuildContext context) {
    return SvgIcon(
        asset: (logoWithText) ? SvgIcon.logoWithText : SvgIcon.logo,color: AstraColors.white,
        );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_ui_sample_1/mitch_koko/example1/responsive/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
    required this.tabletBody,
  });

  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (Dimensions.isMobile(constraints.maxWidth)) {
          return mobileBody;
        }
        // else if (Dimensions.isTablet(constraints.maxWidth)) {
        //   return tabletBody;
        // }
        else {
          return desktopBody;
        }
      },
    );
  }
}

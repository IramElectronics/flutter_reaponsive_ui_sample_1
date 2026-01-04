class Dimensions {
  static const double mobileWidth = 600;
  static const double tabletWidth = 840;

  static bool isMobile(double width) => width <= mobileWidth;
  static bool isTablet(double width) =>
      width > mobileWidth && width <= tabletWidth;
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/commom_widget/func_get_text_responsive_without_context.dart';

abstract class AppStyles {
  static TextStyle styleRegular16 = TextStyle(
    fontSize: getTextResponsive(fontSize: 16),
    fontWeight: FontWeight.w400,
    color: Color(0xFF064060),
    fontFamily: "Montserrat",
  );
  static TextStyle styleBold16 = TextStyle(
    fontSize: getTextResponsive(fontSize: 16),
    fontWeight: FontWeight.w700,
    color: Color(0xFF4EB7F2),
    fontFamily: "Montserrat",
  );
  static TextStyle styleMedium16 = TextStyle(
    fontSize: getTextResponsive(fontSize: 16),
    fontWeight: FontWeight.w500,
    color: Color(0xFF064061),
    fontFamily: "Montserrat",
  );
  static TextStyle styleMedium20 = TextStyle(
    fontSize: getTextResponsive(fontSize: 20),
    fontWeight: FontWeight.w500,
    color: Color(0xFFFFFFFF),
    fontFamily: "Montserrat",
  );
  static TextStyle styleSemiBold16 = TextStyle(
    fontSize: getTextResponsive(fontSize: 16),
    fontWeight: FontWeight.w600,
    color: Color(0xFF064060),
    fontFamily: "Montserrat",
  );
  static TextStyle styleSemiBold20 = TextStyle(
    fontSize: getTextResponsive(
      fontSize: 20,
    ),
    fontWeight: FontWeight.w600,
    color: Color(0xFF064060),
    fontFamily: "Montserrat",
  );
  static TextStyle styleRegular12 = TextStyle(
    fontSize: getTextResponsive(fontSize: 12),
    fontWeight: FontWeight.w400,
    color: Color(0xFFAAAAAA),
    fontFamily: "Montserrat",
  );
  static TextStyle styleSemiBold24 = TextStyle(
    fontSize: getTextResponsive(fontSize: 24),
    fontWeight: FontWeight.w600,
    color: Color(0xFF4EB7F2),
    fontFamily: "Montserrat",
  );
  static TextStyle styleRegular14 = TextStyle(
    fontSize: getTextResponsive(fontSize: 14),
    fontWeight: FontWeight.w400,
    color: Color(0xFFAAAAAA),
    fontFamily: "Montserrat",
  );
  static TextStyle styleSemiBold18 = TextStyle(
    fontSize: getTextResponsive(fontSize: 18),
    fontWeight: FontWeight.w600,
    color: Color(0xFFFFFFFF),
    fontFamily: "Montserrat",
  );
}

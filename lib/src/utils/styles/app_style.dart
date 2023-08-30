

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:phitness/src/utils/styles/app_color.dart';

class AppStyle{
  static var h2Bold = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
    // height: 36,
    color: AppTextColor.h2TextColor,
  );

  static var h4Bold = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
    // height: 36,
    color: AppTextColor.blackTextColor,
  );

  static var semiBold = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    // height: 36,
    color: AppTextColor.blackTextColor,
  );

  static  var mediumRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    // height: 21,
    fontSize: 14.sp,
    color: AppTextColor.regularTextColor,
  );

  static  var mediumRegular2 = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    // height: 21,
    fontSize: 14.sp,
    color: AppTextColor.regularTextColor,
  );


  static  var largeRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    // height: 21,
    fontSize: 16.sp,
    color: AppTextColor.h2TextColor,
  );

  static  var hintRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    // height: 21,
    fontSize: 12.sp,
    color: AppTextColor.greyTextColor,
  );

  static  var largeMedium = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    // height: 21,
    fontSize: 16.sp,
    color: AppTextColor.h2TextColor,
  );

  static  var displayRegular = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    // height: 21,
    fontSize: 12.sp,
    color: AppTextColor.h2TextColor,
  );


}
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/app_colors.dart';
import '../constant/app_dimens.dart';

class ToastUtil {
  static showToast(String message) {
    if (message==null||message.isEmpty) {
      return;
    }
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: AppColors.COLOR_FF5722,
        textColor: Colors.white,
        fontSize: ScreenUtil().setSp(AppDimens.DIMENS_42).toDouble());
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'colorconfig.dart';
import 'image.dart';

class AppTemplate {
  AppTemplate._();

  static Widget templateBGApp(
      {required Widget child,
      EdgeInsetsGeometry? margin,
      double top = 20.0,
      double left = 20.0,
      double right = 20.0,
      double? bottom,
      bool footer = false,
      bool gradienBottom = true,
      Orientation orientation = Orientation.portrait}) {
    double height = Get.context?.height ?? 0.0;

    return Stack(
      children: [
        Positioned.fill(
          left: 0,
          top: 0,
          right: 0,
          bottom: 0,
          child: OrientationBuilder(
            builder: (_, __) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(gradienBottom
                        ? "assets/images/background.png"
                        : "assets/images/background_grad_top.png"),
                    fit: !gradienBottom
                        ? BoxFit.fitWidth
                        : (orientation == Orientation.portrait)
                            ? BoxFit.fill
                            : BoxFit.fitWidth,
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          left: left,
          top: top,
          right: right,
          bottom: bottom,
          child: SafeArea(
            child: child,
          ),
        ),
        (footer)
            ? Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset("assets/images/footer.png"),
              )
            : Container(),
        (footer)
            ? Align(
                alignment: Alignment(0, .95),
                child: Container(
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: AppColorConfig.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Image.asset(
                    "assets/images/favicon.png",
                    width: height / 12,
                  ),
                ),
              )
            : Container(),
      ],
    );
  }

  static Widget opacityBG({
    required Widget child,
    double maxHeight = double.infinity,
    EdgeInsets? margin,
    Color? color,
    BorderRadiusGeometry? borderRadius,
  }) {
    color ??= AppColorConfig.white.withOpacity(.8);
    borderRadius ??= BorderRadius.circular(10.0);
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        margin: margin,
        constraints: BoxConstraints(
          maxHeight: maxHeight,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: child,
      ),
    );
  }
}

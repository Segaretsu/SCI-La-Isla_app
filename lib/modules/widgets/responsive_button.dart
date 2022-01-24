import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_la_isla/modules/misc/colors.dart';
import 'package:flutter_la_isla/modules/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width=120, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true? double.maxFinite: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
          children: [
            isResponsive==true ? Container(margin: const EdgeInsets.only(left: 20),
              child: AppText(text: "Agregar a la compra", color: Colors.white)) : Container(),
            Image.asset("assets/images/button-one.png"),
          ],
        )
      ),
    );
  }
}

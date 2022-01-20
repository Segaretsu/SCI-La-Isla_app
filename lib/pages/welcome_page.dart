import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_la_isla/modules/misc/colors.dart';
import 'package:flutter_la_isla/modules/widgets/app_large_text.dart';
import 'package:flutter_la_isla/modules/widgets/app_text.dart';
import 'package:flutter_la_isla/modules/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];

  String title = "Almacen la Isla";

  List subtitles = [
    "Ventas en sitio",
    "Inventario",
    "Cuentas claras",
  ];

  List description = [
    "Lleva un registro de tus ventas y conoce las ganancias que generan en el mes",
    "Conoce la existencia de tus productos en todo momento y mantente informado de los que estén a punto de acabarse",
    "Ahora que tienes toda esta información a tu disposición toma decisiones para mejorar tu negocio.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length, // usaremos 3 imagenes por eso el 3
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/" + images[index]
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: title),
                        AppText(text: subtitles[index], size: 30,),
                        SizedBox(height: 20,),
                        Container(
                          width: 250,
                          child: AppText(
                            text: description[index],
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        ),
                        SizedBox(height: 40,),
                        ResponsiveButton(width: 120,)
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots){
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: (index == indexDots) ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: (index == indexDots) ? AppColors.mainColor: AppColors.mainColor.withOpacity(0.3),
                          ),
                        );
                      }),
                    )
                  ]
                ),
              ),
            );
          }),
    );
  }
}

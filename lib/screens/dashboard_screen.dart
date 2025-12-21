import 'package:club_canva_proj/colors.dart';
import 'package:club_canva_proj/screens/Events/view/Eventupdate.dart';
import 'package:club_canva_proj/screens/Wallet/wallet.dart';
import 'package:club_canva_proj/screens/bottom_navigationbar/controller/bottomnavigation.dart';
import 'package:club_canva_proj/screens/bottom_navigationbar/view/bottom_navscreen.dart';
import 'package:club_canva_proj/strings.dart';
import 'package:club_canva_proj/widgets/reusable_textwidget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double parentwidth = 0.0;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.auto_awesome_mosaic,
                      color: Color(AppColors.primary_color),
                    ),
                    Text_widget(
                      text: Strings.appName,
                      fontWeight: FontWeight.bold,
                      fontsize: 16,
                      color: Colors.white,
                      textalign: TextAlign.center,
                    ),
                  ],
                ),

                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade700,
                      child: Icon(Icons.sunny, color: Colors.white),
                    ),
                    CircleAvatar(child: Icon(Icons.person_rounded)),
                  ],
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      double parentWidth = constraints.maxWidth;
                      double parentHeight = constraints.maxHeight;

                      return Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/images/membership/membership_gold.png",
                              height: 200,
                              width: parentWidth,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(AppColors.secondary_color),
                              ),
                              width: parentWidth,
                              // for example, 50% of image width
                              height: 100,

                              child: const Center(
                                child: Text(
                                  'Overlaid',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),

            //Event Section
            Column(
              children: [
                Row(
                  children: [
                    Text_widget(
                      text: "text",
                      fontWeight: fontWeight,
                      fontsize: fontsize,
                      color: color,
                      textalign: textalign,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ), // entire page column
      ),
    );
  }
}

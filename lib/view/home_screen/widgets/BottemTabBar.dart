import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pr_7_db_miner/view/Theme_Setting_screen/Theme_screen.dart';
import '../../category_screen/category1.dart';
import '../../favorites_screen/favorites1.dart';
import '../../setting/setting.dart';

Widget BottomTabBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.white)),
          child: IconButton(
              onPressed: () {
                Get.to(() => CategoryScreen1(),
                    transition: Transition.downToUp);
              },
              icon: Icon(
                Icons.format_quote,
                color: Colors.white,
              )),
        ),
      ),
      GestureDetector(
        onTap: () {
          Get.to(() => ThemeScreen(),
              transition: Transition.rightToLeftWithFade);
        },
        child: Padding(
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.white)),
              child: Icon(
                Icons.color_lens,
                color: Colors.white,
              )),
        ),
      ),
      GestureDetector(
        onTap: () {
          Get.to(FavoriteScreen(), transition: Transition.downToUp);
        },
        child: Padding(
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.white)),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: InkWell(
          onTap: () {
            Get.to(SettingsPage(), transition: Transition.downToUp);
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.white)),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    ],
  );
}

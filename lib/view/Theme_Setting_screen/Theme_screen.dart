import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr_7_db_miner/controllers/theme_controller.dart';

import '../../Utils/theme_image_list.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.multiply),
        ),
        title: Text(
          'Themes',
          style: GoogleFonts.abhayaLibre(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      backgroundColor: Colors.greenAccent.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            sectionTitle('Colors'),
            themeImg(Images, context, themeController),
            sectionTitle('Theme'),
            themeImg(Images2, context, themeController),
            themeImg(Images3, context, themeController),
            themeImg(Images4, context, themeController),
          ],
        ),
      ),
    );
  }

  Container themeImg(
      List photoList, BuildContext context, ThemeController themeController) {
    return Container(
      height: 220,
      child: ListView.builder(
        itemCount: photoList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () {
              themeController.setImage(
                photoList[index],
              );
              Navigator.pop(context);
            },
            child: Container(
              height: 180,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(photoList[index]),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row sectionTitle(String title) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.green.shade900,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}

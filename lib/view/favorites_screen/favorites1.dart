import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr_7_db_miner/controllers/QuoteController.dart';
import 'package:pr_7_db_miner/view/favorites_screen/favorites2.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    QuotesController quotesController = Get.put(QuotesController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.multiply),
        ),
        title: Text(
          'Favorite',
          style: GoogleFonts.abhayaLibre(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      backgroundColor: Colors.white38,
      body: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        itemCount: quotesController.categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: (width / 2 - 20) / 100,
        ),
        itemBuilder: (context, index) {
          List<String> category = quotesController.categories.toList();
          return GestureDetector(
            onTap: () {
              Get.to(() => LikeScreen(category: category[index]));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow.shade50,
              ),
              child: Center(
                child: Text(
                  category[index],
                  style: GoogleFonts.aBeeZee(
                    color: Colors.green.shade900,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

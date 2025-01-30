import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:gurugranth/database/krithi_database.dart';
import 'package:gurugranth/view/krithi_page/krithi_page_controller.dart';
import 'package:provider/provider.dart';

class KrithiPage extends StatelessWidget {
  final int indexCount;
  const KrithiPage({super.key, required this.indexCount});

  @override
  Widget build(BuildContext context) {
    final providerObj = Provider.of<KrithiPageController>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              providerObj.currentIndex = 0;
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              onPressed: () {
                providerObj.incrementIndex();
                log(providerObj.currentIndex.toString());
              },
              icon: Icon(Icons.add_circle_outline)),
          SizedBox(
            width: 10.h,
          ),
          Text(providerObj.currentIndex.toString()),
          SizedBox(
            width: 10.h,
          ),
          IconButton(
              onPressed: () {
                providerObj.decrementIndex();
              },
              icon: Icon(Icons.remove_circle_outline_sharp)),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  KrithiDatabase.krithiDatabase[indexCount]['title'],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.anekMalayalam(
                    textStyle: TextStyle(
                      fontSize: (25 + providerObj.currentIndex).sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  KrithiDatabase.krithiDatabase[indexCount]['lyrics'],
                  style: GoogleFonts.anekMalayalam(
                    textStyle: TextStyle(
                      fontSize: (15 + providerObj.currentIndex).sp,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

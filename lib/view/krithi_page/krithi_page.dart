import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:gurugranth/database/krithi_database.dart';
import 'package:gurugranth/extensions/font_extensions/font_extensions.dart';
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
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            HapticFeedback.heavyImpact();
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
        shadowColor: Colors.grey,
        backgroundColor: Colors.blue,
        surfaceTintColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: () {
                HapticFeedback.lightImpact();
                providerObj.incrementIndex();
                log(providerObj.currentIndex.toString());
              },
              icon: Icon(Icons.add_circle_outline)),
          SizedBox(
            width: 10.w,
          ),
          Text(
            providerObj.currentIndex.toString(),
            style: context.anekMalayalamSemiBold12
                .copyWith(color: Colors.white, fontSize: 12.sp),
          ),
          SizedBox(
            width: 10.h,
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {
              HapticFeedback.lightImpact();
              providerObj.decrementIndex();
            },
            icon: Icon(Icons.remove_circle_outline_sharp),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.r),
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

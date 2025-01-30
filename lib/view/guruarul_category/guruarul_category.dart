import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurugranth/database/krithi_database.dart';
import 'package:gurugranth/view/krithi_category.dart/krithi_category_page.dart';
import 'package:gurugranth/view/krithi_page/krithi_page.dart';

class GuruarulCategory extends StatelessWidget {
  const GuruarulCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ഗുരുദേവ അരുൾ',
          style: GoogleFonts.anekMalayalam(
            textStyle: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.h, vertical: 10.0.h),
        child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => KrithiPage(indexCount: index),
                        ));
                  },
                  child: KrithikalContainer(
                    index: index,
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
            itemCount: KrithiDatabase.krithiDatabase.length),
      ),
    );
  }
}

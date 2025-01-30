import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurugranth/constants/constants.dart';
import 'package:gurugranth/database/guruarul_database.dart';
import 'package:gurugranth/database/krithi_database.dart';
import 'package:gurugranth/view/guruarul_page/guruarul_page.dart';
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
        padding: EdgeInsets.symmetric(vertical: 10.0.h),
        child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GuruarulPage(indexCount: index),
                        ));
                  },
                  child: Container(
                    height: 50.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                    decoration: BoxDecoration(
                      color: pureWhite,
                      border: Border(
                        bottom: BorderSide(
                            color: Colors.black.withValues(alpha: 0.1)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "${index + 1}. ${GuruarulDatabase.guruArulData[index]['title']}",
                          style: GoogleFonts.anekMalayalam(
                              fontSize: 16.sp, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 0.h,
                ),
            itemCount: GuruarulDatabase.guruArulData.length),
      ),
    );
  }
}

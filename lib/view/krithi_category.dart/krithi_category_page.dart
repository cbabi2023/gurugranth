import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurugranth/constants/constants.dart';
import 'package:gurugranth/database/krithi_database.dart';
import 'package:gurugranth/view/krithi_page/krithi_page.dart';

class KrithiCategoryPage extends StatelessWidget {
  const KrithiCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ഗുരുദേവ കൃതികൾ',
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

class KrithikalContainer extends StatelessWidget {
  final int index;
  const KrithikalContainer({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
      decoration: BoxDecoration(
        color: pureWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25.r,
                backgroundImage:
                    AssetImage(KrithiDatabase.krithiDatabase[index]['image']),
              ),
              SizedBox(
                width: 15.w,
              ),
              Text(
                KrithiDatabase.krithiDatabase[index]['title'],
                style: GoogleFonts.anekMalayalam(
                  textStyle: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, size: 18.sp),
        ],
      ),
    );
  }
}

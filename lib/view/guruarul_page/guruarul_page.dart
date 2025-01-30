import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurugranth/database/guruarul_database.dart';

class GuruarulPage extends StatelessWidget {
  final int indexCount;
  const GuruarulPage({super.key, required this.indexCount});

  @override
  Widget build(BuildContext context) {
    var quotes = GuruarulDatabase.guruArulData[indexCount]["quotes"];
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Column(
            children: [
              Text(
                "${indexCount + 1}. ${GuruarulDatabase.guruArulData[indexCount]['title']}",
                style: GoogleFonts.anekMalayalam(
                    color: Colors.black.withValues(alpha: 0.6),
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: ListView.separated(
                    itemCount: quotes.length,
                    itemBuilder: (context, index) => Text(
                        "${index + 1}. ${quotes[index]}",
                        style: GoogleFonts.anekMalayalam(
                            fontSize: 16.sp, fontWeight: FontWeight.w400)),
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 10.h)),
              )
            ],
          ),
        ));
  }
}

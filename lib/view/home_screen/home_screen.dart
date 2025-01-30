import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurugranth/constants/constants.dart';
import 'package:gurugranth/database/home_database.dart';
import 'package:gurugranth/extensions/font_extensions/font_extensions.dart';
import 'package:gurugranth/gen/assets.gen.dart';
import 'package:gurugranth/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 10.r, right: 10.r, bottom: 15.r),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Hero(
                  tag: 'logo',
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.pngs.guruimage.path,
                        width: 100.h,
                        height: 100.h,
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'ഗുരുഗ്രന്ഥം',
                        style: GoogleFonts.anekMalayalam(
                          textStyle: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.r),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: HomeData.homeCategoryData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 20.h,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        HapticFeedback.selectionClick();

                        index == 0
                            ? Navigator.pushNamed(
                                context, AppRoutes.krithiCategoryPage)
                            : Navigator.pushNamed(
                                context, AppRoutes.commingSoon);
                      },
                      child: HomeGridCard(indexCount: index),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeGridCard extends StatelessWidget {
  final int indexCount;

  const HomeGridCard({
    super.key,
    required this.indexCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 180.h,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .5),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    HomeData.homeCategoryData[indexCount].keys.first.toString(),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 7.r, right: 7.r),
                child: Text(
                    HomeData.homeCategoryData[indexCount].values.first
                        .toString(),
                    textAlign: TextAlign.center,
                    style: context.anekMalayalamSemiBold20
                        .copyWith(fontSize: 17.sp, color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

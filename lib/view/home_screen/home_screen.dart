import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gurugranth/database/home_database.dart';
import 'package:gurugranth/gen/assets.gen.dart';
import 'package:gurugranth/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.h),
          child: Column(
            children: [
              // Top Content
              Column(
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
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30.h),

              // Grid View

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
                      index == 0
                          ? Navigator.pushNamed(
                              context, AppRoutes.krithiCategoryPage)
                          : null;
                    },
                    child: HomeGridCard(indexCount: index),
                  );
                },
              ),
            ],
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
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(1),
            blurRadius: 8,
            offset: Offset(0, 4), // Shadow direction
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image section
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity, // Make sure image fills the container
              height: 100.h, // Adjust the height of the image container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
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
          // Text section
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
              child: Text(
                HomeData.homeCategoryData[indexCount].values.first.toString(),
                textAlign: TextAlign.center,
                style: GoogleFonts.anekMalayalam(
                  textStyle: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

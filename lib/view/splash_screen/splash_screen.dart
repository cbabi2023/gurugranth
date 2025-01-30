import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gurugranth/extensions/font_extensions/font_extensions.dart';
import 'package:gurugranth/gen/assets.gen.dart';
import 'package:gurugranth/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  double _scale = 0.1;
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _scale = 1.0;
      });

//TODO: we check the mounted property to avoid calling setState on a disposed widget
      Future.delayed(Duration(seconds: 3), () {
        if (mounted) {
          Navigator.pushNamedAndRemoveUntil(
              context, AppRoutes.homeScreen, (route) => false);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedScale(
          scale: _scale,
          duration: Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Hero(


            tag: 'logo', 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.pngs.guruimage.path),
                SizedBox(height: 10.r),
                Text(
                  'ഗുരുഗ്രന്ഥം',
                  style: context.anekMalayalamBold18.copyWith(fontSize: 25.sp),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

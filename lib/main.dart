import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gurugranth/routes/app_routes.dart';
import 'package:gurugranth/view/krithi_page/krithi_page_controller.dart';
import 'package:gurugranth/view/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:appwrite/appwrite.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Client client = Client();
  client
      .setEndpoint('http://213.210.36.7/v1')
      .setProject('67a348fe00034f374f49')
      .setSelfSigned(
          status:
              true); // For self signed certificates, only use for development

  Account account = Account(client);

  runApp(MyApp(
    account: account,
  ));
}

class MyApp extends StatelessWidget {
  final Account account;
  const MyApp({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => KrithiPageController(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoutes.generateRoute,
          initialRoute: AppRoutes.splahScreen,
          home: SplashScreen(),
        ),
      ),
    );
  }
}

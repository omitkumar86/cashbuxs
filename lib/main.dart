import 'package:cashbuxs/utils/app_constants.dart';
import 'package:cashbuxs/view/screen/accept/accept_screen.dart';
import 'package:cashbuxs/view/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'di_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  //await Firebase.initializeApp();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppConstants.appName,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            initialRoute: SplashScreen.routeName,
            getPages: [
              GetPage(
                name: SplashScreen.routeName,
                page: () => SplashScreen(),
                transition: Transition.fadeIn,
              ),
              GetPage(
                name: AcceptScreen.routeName,
                page: () => AcceptScreen(),
                transition: Transition.leftToRight,
                transitionDuration: Duration(milliseconds: 500),
              ),
            ],
          );
        });
  }
}

import 'package:cashbuxs/view/screen/accept/accept_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    Future.delayed(Duration(milliseconds: 3500), (){
      Get.offNamedUntil(AcceptScreen.routeName, (route) => false);
    });
  }
}
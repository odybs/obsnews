import 'package:get/get.dart';
import 'package:obsnews/pages/view/daftar/daftar_view.dart';
import 'package:obsnews/pages/view/home/home_view.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  onMasuk() {
    Get.to(HomeView());
  }

  onResetPW() {}

  onDaftar() {
    Get.to(DaftarView());
  }
}

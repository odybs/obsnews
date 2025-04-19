import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obsnews/pages/view/daftar/daftar_view.dart';
import 'package:obsnews/pages/view/home/home_view.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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

  String? validateEmail(String? email) {
    if (email!.isEmpty) {
      return "Email tidak boleh kosong";
    }
    if (!GetUtils.isEmail(email)) {
      return "Email tidak valid";
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password!.isEmpty) {
      return "Password tidak boleh kosong";
    }
    if (password.length < 6) {
      return "Password minimal 6 karakter";
    }
    return null;
  }
}

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthAdminGuard extends GetMiddleware {
  /// final authService = Get.find<AuthService>();
  GetStorage authStorage = GetStorage();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
      // Navigate to login if client is not authenticated other wise continue
      if (authStorage.read("login") != "yes"){
        return RouteSettings(name: "/admin/login");
      }      
  }
}
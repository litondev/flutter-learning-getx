// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:learning_getx/2.get-pages/admin.dashboard.dart';
// import 'package:learning_getx/2.get-pages/admin.logout.dart';
// import 'package:learning_getx/2.get-pages/middleware-pages.dart';

// import "./2.get-pages/home.dart";
// import "./2.get-pages/about.dart";
// import "./2.get-pages/detail.dart";

// import "./2.get-pages/admin.dashboard.dart";
// import "./2.get-pages/admin.login.dart";
// import "./2.get-pages/admin.about.dart";
// import "./2.get-pages/admin.logout.dart";

// void main() => runApp(
//   GetMaterialApp(
//     getPages: [
//       GetPage(name: '/', page: () => Home()),
//       GetPage(name: '/about',page: () => About()),
//       GetPage(name: "/detail",page:  () => Detail()),
//       GetPage(name: "/admin/login",page : () => AdminLogin()),
//       GetPage(
//         name : "/admin/dashboard",
//         page : () => AdminDashboard(),
//         middlewares: [
//           AuthAdminGuard()
//         ],
//         children: [
//             GetPage(
//               name: "/admin/about",
//               page: () => AdminAbout(),
//             ),
//             GetPage(
//               name : "/admin/logout",
//               page : () => AdminLogout()
//             )
//         ]
//       )
//     ]
//   )
// );
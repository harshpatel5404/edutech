import 'package:edutech/app/binding/home_binding.dart';
import 'package:edutech/app/ui/screens/homepage.dart';
import 'package:edutech/app/ui/screens/splash.dart';
import 'package:get/get.dart';
part './page_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
   
  ];
}

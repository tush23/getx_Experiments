import 'package:get/get.dart';

import 'package:getx_cli/app/modules/home/controllers/home_controller.dart';
import 'package:getx_cli/app/modules/home/views/home_view.dart';
import 'package:getx_cli/app/modules/newspage/bindings/newspage_binding.dart';
import 'package:getx_cli/app/modules/newspage/views/newspage_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),

      //this will create single instance and dispose just after use
      binding: BindingsBuilder.put(
        () => HomeController(),
      ),
    ),
    GetPage(
      name: _Paths.NEWSPAGE,
      page: () => NewsPageView(),
      binding: NewspageBinding(),
    ),

  ];
}

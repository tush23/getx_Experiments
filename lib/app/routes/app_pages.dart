import 'package:get/get.dart';

import 'package:getx_cli/app/modules/home/controllers/home_controller.dart';
import 'package:getx_cli/app/modules/home/views/home_view.dart';
import 'package:getx_cli/app/modules/newspage/bindings/newspage_binding.dart';
import 'package:getx_cli/app/modules/newspage/views/newspage_view.dart';
import 'package:getx_cli/app/modules/search/bindings/search_binding.dart';
import 'package:getx_cli/app/modules/search/views/search_view.dart';
import 'package:getx_cli/app/modules/shTry/bindings/sh_try_binding.dart';
import 'package:getx_cli/app/modules/shTry/views/sh_try_view.dart';
import 'package:getx_cli/app/modules/shTry/views/sh_try_item_view.dart';
import 'package:getx_cli/app/modules/svgtoCutomPaint/bindings/svgto_cutom_paint_binding.dart';
import 'package:getx_cli/app/modules/svgtoCutomPaint/views/svgto_cutom_paint_view.dart';

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
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.SVGTO_CUTOM_PAINT,
      page: () => SvgtoCutomPaintView(),
      binding: SvgtoCutomPaintBinding(),
    ),
    GetPage(
      name: _Paths.SH_TRY,
      page: () => ShTryView(),
      binding: ShTryBinding(),
    ),

  ];
}

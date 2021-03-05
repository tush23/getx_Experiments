import 'package:get/get.dart';

import 'package:getx_cli/app/modules/svgtoCutomPaint/controllers/svgto_cutom_paint_controller.dart';

class SvgtoCutomPaintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SvgtoCutomPaintController>(
      () => SvgtoCutomPaintController(),
    );
  }
}

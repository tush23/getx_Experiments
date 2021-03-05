import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:getx_cli/app/modules/svgtoCutomPaint/controllers/svgto_cutom_paint_controller.dart';

import 'custom_paint.dart';

class SvgtoCutomPaintView extends GetView<SvgtoCutomPaintController> {
  @override
  Widget build(BuildContext context) {
    double width = 200;
    return Scaffold(
      appBar: AppBar(
        title: Text('SvgtoCutomPaintView'),
        centerTitle: true,
      ),
      body: Center(
        child: CustomPaint(
    size: Size(width, (width*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: RPSCustomPainter(),
),
      ),
    );
  }
}

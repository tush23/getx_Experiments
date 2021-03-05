import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree


//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*0.5000000,0), Offset(size.width*0.5000000,size.height*0.01000000), [Color(0xfffbbe5b).withOpacity(1),Color(0xffed595d).withOpacity(1),Color(0xffea435d).withOpacity(1)], [0,0.776,1]);
canvas.drawRect(Rect.fromLTWH(0,0,size.width,size.height),paint_0_fill);

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.color = Color(0xffffffff).withOpacity(1.0);
canvas.drawOval(Rect.fromCenter(center:Offset(size.width*0.2442441,size.height*0.2442441),width:size.width*0.4884883,height:size.height*0.4884883),paint_1_fill);

Path path_2 = Path();
    path_2.moveTo(size.width*0.3766797,size.height*0.6648066);
    path_2.cubicTo(size.width*0.3740176,size.height*0.6405000,size.width*0.3605254,size.height*0.5777090,size.width*0.3307500,size.height*0.5792969);
    path_2.cubicTo(size.width*0.3005059,size.height*0.5808594,size.width*0.2889531,size.height*0.6412832,size.width*0.2870410,size.height*0.6644258);
    path_2.lineTo(size.width*0.2720410,size.height*0.6632051);
    path_2.cubicTo(size.width*0.2723613,size.height*0.6592715,size.width*0.2804551,size.height*0.5668379,size.width*0.3299688,size.height*0.5642637);
    path_2.cubicTo(size.width*0.3801543,size.height*0.5617246,size.width*0.3911895,size.height*0.6590293,size.width*0.3916445,size.height*0.6631699);
    path_2.close();

Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
paint_2_fill.color = Color(0xffffffff).withOpacity(1.0);
canvas.drawPath(path_2,paint_2_fill);

Path path_3 = Path();
    path_3.moveTo(size.width*0.2806641,size.height*0.3685840);
    path_3.lineTo(size.width*0.2806641,size.height*0.3646582);
    path_3.arcToPoint(Offset(size.width*0.2518691,size.height*0.3358613),radius: Radius.elliptical(size.width*0.02879297, size.height*0.02879297),rotation: 0 ,largeArc: false,clockwise: false);
    path_3.lineTo(size.width*0.2282949,size.height*0.3358613);
    path_3.arcToPoint(Offset(size.width*0.2282949,size.height*0.2782656),radius: Radius.elliptical(size.width*0.02879883, size.height*0.02879883),rotation: 0 ,largeArc: true,clockwise: true);
    path_3.lineTo(size.width*0.2625996,size.height*0.2782656);
    path_3.arcToPoint(Offset(size.width*0.2914062,size.height*0.2494648),radius: Radius.elliptical(size.width*0.02880078, size.height*0.02880078),rotation: 0 ,largeArc: false,clockwise: false);
    path_3.lineTo(size.width*0.2914062,size.height*0.2457031);
    path_3.arcToPoint(Offset(size.width*0.2626074,size.height*0.2169043),radius: Radius.elliptical(size.width*0.02879883, size.height*0.02879883),rotation: 0 ,largeArc: false,clockwise: false);
    path_3.lineTo(size.width*0.2515215,size.height*0.2169043);
    path_3.arcToPoint(Offset(size.width*0.2232617,size.height*0.1825820),radius: Radius.elliptical(size.width*0.02879492, size.height*0.02879492),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.2238652,size.height*0.1794941);
    path_3.arcToPoint(Offset(size.width*0.2521270,size.height*0.1562266),radius: Radius.elliptical(size.width*0.02879883, size.height*0.02879883),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.2900391,size.height*0.1562266);
    path_3.arcToPoint(Offset(size.width*0.3188398,size.height*0.1274277),radius: Radius.elliptical(size.width*0.02880078, size.height*0.02880078),rotation: 0 ,largeArc: false,clockwise: false);
    path_3.lineTo(size.width*0.3188398,size.height*0.1236738);
    path_3.arcToPoint(Offset(size.width*0.2900391,size.height*0.09487500),radius: Radius.elliptical(size.width*0.02880078, size.height*0.02880078),rotation: 0 ,largeArc: false,clockwise: false);
    path_3.lineTo(size.width*0.2753516,size.height*0.09487500);
    path_3.arcToPoint(Offset(size.width*0.2470820,size.height*0.06056641),radius: Radius.elliptical(size.width*0.02879492, size.height*0.02879492),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.2530703,size.height*0.02986914);
    path_3.arcToPoint(Offset(size.width*0.2802461,size.height*0.006601562),radius: Radius.elliptical(size.width*0.02879297, size.height*0.02879297),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.4546074,0);
    path_3.lineTo(size.width*0.5643223,size.height*0.3961504);
    path_3.lineTo(size.width*0.3096055,size.height*0.3973848);
    path_3.lineTo(size.width*0.3094668,size.height*0.3973848);
    path_3.arcToPoint(Offset(size.width*0.2806641,size.height*0.3685840),radius: Radius.elliptical(size.width*0.02880078, size.height*0.02880078),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.close();
    path_3.moveTo(size.width*0.09121094,size.height*0.3340918);
    path_3.arcToPoint(Offset(size.width*0.07924219,size.height*0.3221230),radius: Radius.elliptical(size.width*0.01197070, size.height*0.01197070),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.07924219,size.height*0.2887246);
    path_3.arcToPoint(Offset(size.width*0.09121094,size.height*0.2767559),radius: Radius.elliptical(size.width*0.01196875, size.height*0.01196875),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.1632812,size.height*0.2767559);
    path_3.arcToPoint(Offset(size.width*0.1752480,size.height*0.2887227),radius: Radius.elliptical(size.width*0.01196680, size.height*0.01196680),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.1752480,size.height*0.3221309);
    path_3.arcToPoint(Offset(size.width*0.1632812,size.height*0.3340996),radius: Radius.elliptical(size.width*0.01196875, size.height*0.01196875),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.close();
    path_3.moveTo(size.width*0.09850977,size.height*0.3328516);
    path_3.arcToPoint(Offset(size.width*0.09850977,size.height*0.2799844),radius: Radius.elliptical(size.width*0.02643359, size.height*0.02643359),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.1011270,size.height*0.2799844);
    path_3.arcToPoint(Offset(size.width*0.1011270,size.height*0.3328516),radius: Radius.elliptical(size.width*0.02643359, size.height*0.02643359),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.close();
    path_3.moveTo(size.width*0.1952305,size.height*0.2173008);
    path_3.arcToPoint(Offset(size.width*0.1832617,size.height*0.2053320),radius: Radius.elliptical(size.width*0.01196875, size.height*0.01196875),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.1832617,size.height*0.1733008);
    path_3.arcToPoint(Offset(size.width*0.1205332,size.height*0.1613281),radius: Radius.elliptical(size.width*0.01196875, size.height*0.01196875),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.1854160,size.height*0.1613281);
    path_3.arcToPoint(Offset(size.width*0.1973828,size.height*0.1732949),radius: Radius.elliptical(size.width*0.01196680, size.height*0.01196680),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.1973828,size.height*0.2053262);
    path_3.arcToPoint(Offset(size.width*0.1854141,size.height*0.2172949),radius: Radius.elliptical(size.width*0.01196875, size.height*0.01196875),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.close();
    path_3.moveTo(size.width*0.1531855,size.height*0.08277734);
    path_3.arcToPoint(Offset(size.width*0.1403809,size.height*0.06997266),radius: Radius.elliptical(size.width*0.01280273, size.height*0.01280273),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.1403809,size.height*0.02858984);
    path_3.arcToPoint(Offset(size.width*0.1531836,size.height*0.01578516),radius: Radius.elliptical(size.width*0.01280273, size.height*0.01280273),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.1925781,size.height*0.01578516);
    path_3.arcToPoint(Offset(size.width*0.2053828,size.height*0.02858984),radius: Radius.elliptical(size.width*0.01280273, size.height*0.01280273),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.lineTo(size.width*0.2053828,size.height*0.06997266);
    path_3.arcToPoint(Offset(size.width*0.1925781,size.height*0.08277734),radius: Radius.elliptical(size.width*0.01280273, size.height*0.01280273),rotation: 0 ,largeArc: false,clockwise: true);
    path_3.close();

Paint paint_3_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.001953125;
paint_3_stroke.color=Color.fromRGBO(0,0,0,0).withOpacity(1.0);
canvas.drawPath(path_3,paint_3_stroke);

Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
paint_3_fill.color = Color(0xffffffff).withOpacity(1.0);
canvas.drawPath(path_3,paint_3_fill);

Path path_4 = Path();
    path_4.moveTo(size.width*0.4094590,size.height*0.5935410);
    path_4.lineTo(size.width*0.5266230,size.height*0.9859375);
    path_4.lineTo(size.width*0.4280566,size.height*0.9915176);
    path_4.lineTo(size.width*0.3183320,size.height*0.5954023);
    path_4.close();

Paint paint_4_fill = Paint()..style=PaintingStyle.fill;
paint_4_fill.color = Color(0xffffffff).withOpacity(1.0);
canvas.drawPath(path_4,paint_4_fill);

Path path_5 = Path();
    path_5.moveTo(size.width*0.3474355,size.height*0.6658203);
    path_5.cubicTo(size.width*0.3447695,size.height*0.6415098,size.width*0.3312480,size.height*0.5787441,size.width*0.3015020,size.height*0.5803066);
    path_5.cubicTo(size.width*0.2712617,size.height*0.5818691,size.width*0.2597051,size.height*0.6422910,size.width*0.2577969,size.height*0.6654395);
    path_5.lineTo(size.width*0.2427969,size.height*0.6642148);
    path_5.cubicTo(size.width*0.2431172,size.height*0.6602793,size.width*0.2512070,size.height*0.5678516,size.width*0.3007207,size.height*0.5652773);
    path_5.cubicTo(size.width*0.3507656,size.height*0.5627129,size.width*0.3619453,size.height*0.6600391,size.width*0.3623965,size.height*0.6641855);
    path_5.close();

Paint paint_5_fill = Paint()..style=PaintingStyle.fill;
paint_5_fill.color = Color(0xffffffff).withOpacity(1.0);
canvas.drawPath(path_5,paint_5_fill);

Path path_6 = Path();
    path_6.moveTo(size.width*0.2706016,size.height*0.6210762);
    path_6.arcToPoint(Offset(size.width*0.2553672,size.height*0.6053633),radius: Radius.elliptical(size.width*0.01547070, size.height*0.01547070),rotation: 0 ,largeArc: true,clockwise: true);
    path_6.arcToPoint(Offset(size.width*0.2706016,size.height*0.6210762),radius: Radius.elliptical(size.width*0.01547266, size.height*0.01547266),rotation: 0 ,largeArc: false,clockwise: true);
    path_6.close();

Paint paint_6_fill = Paint()..style=PaintingStyle.fill;
paint_6_fill.color = Color(0xffffffff).withOpacity(1.0);
canvas.drawPath(path_6,paint_6_fill);

Path path_7 = Path();
    path_7.moveTo(size.width*0.3163516,size.height*0.6201055);
    path_7.arcToPoint(Offset(size.width*0.3011289,size.height*0.6043926),radius: Radius.elliptical(size.width*0.01547070, size.height*0.01547070),rotation: 0 ,largeArc: true,clockwise: true);
    path_7.arcToPoint(Offset(size.width*0.3163516,size.height*0.6201055),radius: Radius.elliptical(size.width*0.01547070, size.height*0.01547070),rotation: 0 ,largeArc: false,clockwise: true);
    path_7.close();

Paint paint_7_fill = Paint()..style=PaintingStyle.fill;
paint_7_fill.color = Color(0xffffffff).withOpacity(1.0);
canvas.drawPath(path_7,paint_7_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}
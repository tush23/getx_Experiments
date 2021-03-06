import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cli/app/modules/home/controllers/home_controller.dart';
import 'package:getx_cli/app/newPages/newTry.dart';
import 'package:getx_cli/app/routes/app_pages.dart';
import 'package:getx_cli/main.dart';

ValueNotifier<String> byValue = ValueNotifier('_value');

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            FlatButton(
                color: Colors.amber,
                onPressed: () => Get.toNamed(Routes.NEWSPAGE),
                child: Text("Go to News Page")),
            FlatButton(
                color: Colors.amber,
                onPressed: () => Get.toNamed(Routes.SEARCH),
                child: Text("Go to Search Page")),
            FlatButton(
                color: Colors.amber,
                onPressed: () => Get.toNamed(Routes.SVGTO_CUTOM_PAINT),
                child: Text("Svg toCustom Paint")),
            FlatButton(
                color: Colors.amber,
                onPressed: () => Get.toNamed(Routes.SH_TRY),
                child: Text("SH TRy")),
            FlatButton(
                color: Colors.amber,
                onPressed: () => Get.to(NewTry()),
                child: Text("Send Data")),
            TextButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) return Colors.red;
                  if (states.contains(MaterialState.hovered)) return Colors.yellow;
                  return null; // Use the component's default.
                },
              ),),
                onPressed: () {
                // Get.changeTheme(ThemeData(fontFamily: Get.asap(() => null))
                  connectionStatus.value = 'Just Globaafaaafafaack32323s';
                  byValue.value = 'Just Global checaafafaaafks323232';
                  // ignore: invalid_use_of_visible_for_testing_member
                  byValue.notifyListeners();
                },
                child: Text("Just Global checks")),
            Text(connectionStatus.value),
            Text(byValue.value),
          ],
        ),
      ),
    );
  }
}

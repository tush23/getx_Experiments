import 'dart:async';

import 'package:catcher/catcher.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_cli/app/modules/home/views/home_view.dart';

import 'app/routes/app_pages.dart';

var connectionStatus = ''.obs;

void main() {
  // CatcherOptions debugOptions =
  //     CatcherOptions(PageReportMode(showStackTrace: true), [
  //   ConsoleHandler(
  //       enableApplicationParameters: true,
  //       enableDeviceParameters: true,
  //       enableCustomParameters: true,
  //       enableStackTrace: true),
  // EmailManualHandler(
  //   ["dubey.tushar23@email.com", "tusharrrrd@email.com"],
  //   enableDeviceParameters: true,
  //   enableStackTrace: true,
  //   enableCustomParameters: true,
  //   enableApplicationParameters: true,
  //   sendHtml: true,
  //   emailTitle: "Catcher Title",
  //   emailHeader: "Catcher Header",
  //   printLogs: true)
  // Catcher(
  //     runAppFunction: () => runApp,
  //     enableLogger: true,
  //     rootWidget: HomeView(),
  //     debugConfig: debugOptions);

  try {
    runZoned<Future<void>>(
      () async {
        runApp(
          GetMaterialApp(
            // navigatorKey: Catcher.navigatorKey,
            title: "Application",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          ),
        );
      },
      onError: (dynamic error, StackTrace stackTrace) {
        Get.defaultDialog(title: 'Error Accured',middleText: ' Error Info--$error' );
      },
    );
  } catch (ex) {
    print("main.catch-------------");
  }
}

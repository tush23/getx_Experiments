// import 'dart:async';

// import 'package:connectivity/connectivity.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:getx_cli/app/provider/api_provider.dart';

// class NewsControllerWithApiProvidersGetXState extends GetxController with StateMixin
//   final ApiProvider _apiProvider = Get.find();

//   var _connectionStatus=''.obs;
//   final Connectivity _connectivity = new Connectivity();

//   //For subscription to the ConnectivityResult stream
//   StreamSubscription<ConnectivityResult> _connectionSubscription;

//   String get connectionStatus =>_connectionStatus.value;
//   ApiProvider get apiProvider =>_apiProvider;
//   /*
//   ConnectivityResult is an enum with the values as { wifi, mobile, none }.
//   */

//   @override
//   void onReady() {
//     print('onReady called');
//     // initConnectivity();

//     getNews();
//     super.onReady();

//     _connectionSubscription =
//         _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
//             _connectionStatus.value = result.toString();
//         });
//     print("Initstate : $_connectionStatus");
//   }

//   void getNews() {
//     // initConnectivity();
//     // Handler().loading();
//     // progressDialog.show();
//     // Get.con
//     _apiProvider.getNews().then((value) {
//       change(null, status: RxStatus.loading());
//       // Get.back();
//       if (value.hasError) {
//         change(null, status: RxStatus.error(value.statusText));
//       }
//       if (value.status.connectionError) {
//         change(null, status: RxStatus.error(value.statusText));
//         // Get.back();
//       }
//       if (value.status.isOk) {
//         // progressDialog.dismiss();

//         change(value.body, status: RxStatus.success());
//       }
//       // value.i


//       // if(value)
//     });
//   }

//   void getEverything(String q) {
//     _apiProvider.getEverthing(q).then((value) {
//       change(null, status: RxStatus.loading());
//       if (value.hasError)
//         change(null, status: RxStatus.error(value.body.message));
//       if (value.statusCode == 200)
//         change(value.body, status: RxStatus.success());
//     });
//   }

//   // Future<Null> initConnectivity() async {
//   //   String connectionStatus;
//   //
//   //   try {
//   //     connectionStatus = (await _connectivity.checkConnectivity()).toString();
//   //   } on PlatformException catch (e) {
//   //     print(e.toString());
//   //     connectionStatus = "Internet connectivity failed";
//   //   }
//   //
//   //
//   //     _connectionStatus.value = connectionStatus;
//   //   print("InitConnectivity : $_connectionStatus");
//   //   // ignore: unrelated_type_equality_checks
//   //   if(_connectionStatus == "ConnectivityResult.mobile" || _connectionStatus == "ConnectivityResult.wifi") {
//   //     // getData();
//   //   } else {
//   //     print("You are not connected to internet");
//   //   }
//   // }
// }


// import 'package:flutter/foundation.dart' as Foundation;




// class ApiHandler {
//   static final ApiHandler _singleton = ApiHandler._internal();

//   factory ApiHandler() {
//     return _singleton;
//   // }

//   ApiHandler._internal();
//   // ApiHandler({this.errorString, this.retryPressed});

//   noLocationDialog(Function onOkPress)=>Get.defaultDialog(
//       title: kLocRequired,
//       barrierDismissible: false,
//       confirm: Container(
//         // padding: const EdgeInsets.symmetric(horizontal: 16),
//         width: 80,
//         height: 40,
//         child: RaisedGradientButton(
//             onPressed: onOkPress, child: Text('Ok',style: Get.textTheme.button.copyWith(color: Colors.white),)),
//       ),
//       middleText: kLocRequiredDisc);

//   Future<AlertDialog> loading() => showDialog(
//       barrierDismissible: false,
//       child: Center(
//           child: Container(
//               padding: EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.white,
//               ),
//               width: 60,
//               height: 60,
//               child: CircularProgressIndicator(strokeWidth: 1.5,semanticsLabel: "Loadinf",))),
//       context: Get.context);

//   void errorSnackBar(String msg)=>Get.rawSnackbar(snackPosition: SnackPosition.BOTTOM,message: msg,title: 'Error!',duration: Duration(seconds: 3));
//   void noInternetSnackBar()=>Get.rawSnackbar(snackPosition: SnackPosition.BOTTOM,message: "Please check your Internet Connection!",title: 'No Internet');
//   void getInternetSnackBar()=>Get.rawSnackbar(snackPosition: SnackPosition.BOTTOM,message: "Internet connection has been restored",title: 'Internet Restored');

//   Widget onErrorDebugScreen(dynamic detailsException) {

//     return Scaffold(

//         body: Center(
//           child:
//           //Check is it release mode
//           Foundation.kReleaseMode
//           //Widget for release mode
//               ?Center(child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SvgPicture.asset(kErrorSVG),
//               SizedBox(
//                 height: 16,
//               ),
//               Text(
//                 'Something went Wrong',
//                 style: Get.textTheme.headline5,
//               ),
//             ],
//           ),)
//           //Widget for debug modestyle: Get.textTheme.subtitle1.copyWith(color: Colors.white)
//               :SingleChildScrollView(child: Text('Exeption Details:\n\n$detailsException',textAlign: TextAlign.center,style: Get.textTheme.headline6)),
//         )
//     );

//   }

//   Widget onErrorWidget({Function retry,String e}) => Center(child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       SvgPicture.asset(kErrorSVG),
//       SizedBox(
//         height: 16,
//       ),
//       Text(
//         'Something went Wrong',
//         textAlign: TextAlign.center,
//         style: Get.textTheme.headline6,
//       ),
//       Text(
//         '$e',
//         textAlign: TextAlign.center,
//         style: Get.textTheme.headline5,
//       ),
//       Container(
//           margin: EdgeInsets.only(top: 16),
//           width: 100,
//           height: 46,
//           child: RaisedGradientButton(
//             child: Text(
//               'Retry',
//               style: Get.textTheme.subtitle1.copyWith(color: Colors.white),
//             ),
//             onPressed: retry,
//           )),
//     ],
//   ));
//   Widget onNoInternetWidget() => Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SvgPicture.asset(kNoInternetSVG),
//           Text(
//             'No Internet Connection',
//             style: Get.textTheme.headline5,
//           ),
//           Text(
//             'Please check Your Internet !',
//             style: Get.textTheme.bodyText1.copyWith(fontSize: 16),
//           )
//         ],
//       ));
//   Widget onNoResultWidget() => Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SvgPicture.asset(kNoResultSVG),
//           Text(
//             'No Result Found',
//             style: Get.textTheme.headline5,
//           ),
//           Text(
//             'Please search something else !',
//             style: Get.textTheme.bodyText1.copyWith(fontSize: 16),
//           )
//         ],
//       ));
// }

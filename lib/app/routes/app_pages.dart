import 'package:get/get.dart';

import 'package:getx_cli/app/modules/cart/bindings/cart_binding.dart';
import 'package:getx_cli/app/modules/cart/views/cart_view.dart';
import 'package:getx_cli/app/modules/home/bindings/home_binding.dart';
import 'package:getx_cli/app/modules/home/views/home_view.dart';
import 'package:getx_cli/app/modules/login/bindings/login_binding.dart';
import 'package:getx_cli/app/modules/login/views/login_view.dart';
// import 'package:getx_cli/app/modules/wishlist/bindings/wishlist_binding.dart';
// import 'package:getx_cli/app/modules/wishlist/views/wishlist_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    // GetPage(
    //   name: _Paths.WISHLIST,
    //   page: () => WishlistView(),
    //   binding: WishlistBinding(),
    // ),
  ];
}

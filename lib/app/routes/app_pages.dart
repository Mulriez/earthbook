import 'package:get/get.dart';

import 'package:penilaian_22/app/modules/account/bindings/account_binding.dart';
import 'package:penilaian_22/app/modules/account/views/account_view.dart';
import 'package:penilaian_22/app/modules/category/bindings/category_binding.dart';
import 'package:penilaian_22/app/modules/category/views/category_view.dart';
import 'package:penilaian_22/app/modules/detail/bindings/detail_binding.dart';
import 'package:penilaian_22/app/modules/detail/views/detail_view.dart';
import 'package:penilaian_22/app/modules/forgotpass/bindings/forgotpass_binding.dart';
import 'package:penilaian_22/app/modules/forgotpass/views/forgotpass_view.dart';
import 'package:penilaian_22/app/modules/history/bindings/history_binding.dart';
import 'package:penilaian_22/app/modules/history/views/history_view.dart';
import 'package:penilaian_22/app/modules/home/bindings/home_binding.dart';
import 'package:penilaian_22/app/modules/home/views/home_view.dart';
import 'package:penilaian_22/app/modules/library/bindings/library_binding.dart';
import 'package:penilaian_22/app/modules/library/views/library_view.dart';
import 'package:penilaian_22/app/modules/login/bindings/login_binding.dart';
import 'package:penilaian_22/app/modules/login/views/login_view.dart';
import 'package:penilaian_22/app/modules/navbar/bindings/navbar_binding.dart';
import 'package:penilaian_22/app/modules/navbar/views/navbar_view.dart';
import 'package:penilaian_22/app/modules/register/bindings/register_binding.dart';
import 'package:penilaian_22/app/modules/register/views/register_view.dart';
import 'package:penilaian_22/app/modules/splash/bindings/splash_binding.dart';
import 'package:penilaian_22/app/modules/splash/views/splash_view.dart';
import 'package:penilaian_22/app/modules/trending_book/bindings/trending_book_binding.dart';
import 'package:penilaian_22/app/modules/trending_book/views/trending_book_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

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
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPASS,
      page: () => ForgotpassView(),
      binding: ForgotpassBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => NavbarView(),
      binding: NavbarBinding(),
    ),
    GetPage(
      name: _Paths.LIBRARY,
      page: () => LibraryView(),
      binding: LibraryBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: _Paths.TRENDING_BOOK,
      page: () => TrendingBookView(),
      binding: TrendingBookBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
  ];
}

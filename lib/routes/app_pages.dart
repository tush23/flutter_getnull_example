import 'package:flutter_getnull_example/home/bindings/home_binding.dart';
import 'package:flutter_getnull_example/home/presentation/views/country_view.dart';
import 'package:flutter_getnull_example/home/presentation/views/details_view.dart';
import 'package:flutter_getnull_example/home/presentation/views/home_view.dart';
import 'package:get/get.dart';



part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: Routes.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        children: [
          GetPage(
            name: Routes.COUNTRY,
            page: () => CountryView(),
            children: [
              GetPage(
                name: Routes.DETAILS,
                page: () => DetailsView(),
              ),
            ],
          ),
        ]),
  ];
}

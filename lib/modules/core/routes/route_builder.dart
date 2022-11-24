import 'package:flutter/material.dart';
import 'package:fodery_admin/modules/auth/presentation/pages/login_page.dart';
import 'package:fodery_admin/modules/core/ui/pages/page_404.dart';
import 'package:fodery_admin/modules/home/presentation/pages/home_page.dart';
import 'package:fodery_admin/modules/restaurant/presentation/pages/add_new_restaurant_page.dart';
import 'package:fodery_admin/modules/restaurant/presentation/pages/restaurant_listing_page.dart';
import 'package:vrouter/vrouter.dart';
import 'app_routes.dart';

List<VRouteElement> buildRoutes(BuildContext context) {
  return [
    VWidget(
        path: LOGIN_SCREEN_ROUTE,
        name: LOGIN_SCREEN_ROUTE,
        buildTransition: (animation, secondaryAnimation, child) =>
            FadeTransition(
              opacity: animation,
              child: child,
            ),
        widget: const LoginPage()),
    VNester(
        path: "/$RESTAURANT_SEGMENT",
        name: RESTAURANT_SEGMENT,
        buildTransition: (animation, secondaryAnimation, child) =>
            FadeTransition(
              opacity: animation,
              child: child,
            ),
        widgetBuilder: (widget) {
          return widget;
        },
        nestedRoutes: [
          VWidget(
            path: ADD_NEW_SEGMENT,
            name: ADD_NEW_SEGMENT,
            buildTransition: (animation, secondaryAnimation, child) =>
                FadeTransition(
              opacity: animation,
              child: child,
            ),
            widget: const HomePage(child: AddNewRestaurantPage()),
          ),
          VWidget(
            path: LIST_SEGMENT,
            name: LIST_SEGMENT,
            buildTransition: (animation, secondaryAnimation, child) =>
                FadeTransition(
              opacity: animation,
              child: child,
            ),
            widget: const HomePage(child: RestaurantListingPage()),
          )
        ]),
    VWidget(
        path: "*",
        buildTransition: (animation, secondaryAnimation, child) =>
            FadeTransition(
              opacity: animation,
              child: child,
            ),
        widget: const HomePage(
          child: Page404(),
        )),
  ];
}

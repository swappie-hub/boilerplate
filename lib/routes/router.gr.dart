// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/homePage/homepage_view.dart';

class Routes {
  static const String homePageView = '/home-page-view';
  static const all = <String>{
    homePageView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePageView, page: HomePageView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePageView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePageView(),
        settings: data,
      );
    },
  };
}

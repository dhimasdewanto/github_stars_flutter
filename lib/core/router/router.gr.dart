// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:github_stars_flutter/presentation/pages/view_all_page.dart';
import 'package:github_stars_flutter/presentation/pages/view_detail_page.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/presentation/pages/search_page.dart';

abstract class Routes {
  static const viewAllPage = '/';
  static const viewDetailPage = '/view-detail-page';
  static const searchPage = '/search-page';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.viewAllPage:
        if (hasInvalidArgs<ViewAllPageArguments>(args)) {
          return misTypedArgsRoute<ViewAllPageArguments>(args);
        }
        final typedArgs =
            args as ViewAllPageArguments ?? ViewAllPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => ViewAllPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.viewDetailPage:
        if (hasInvalidArgs<ViewDetailPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ViewDetailPageArguments>(args);
        }
        final typedArgs = args as ViewDetailPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => ViewDetailPage(
              key: typedArgs.key, githubStars: typedArgs.githubStars),
          settings: settings,
        );
      case Routes.searchPage:
        if (hasInvalidArgs<SearchPageArguments>(args)) {
          return misTypedArgsRoute<SearchPageArguments>(args);
        }
        final typedArgs = args as SearchPageArguments ?? SearchPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => SearchPage(key: typedArgs.key),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//ViewAllPage arguments holder class
class ViewAllPageArguments {
  final Key key;
  ViewAllPageArguments({this.key});
}

//ViewDetailPage arguments holder class
class ViewDetailPageArguments {
  final Key key;
  final GithubStars githubStars;
  ViewDetailPageArguments({this.key, @required this.githubStars});
}

//SearchPage arguments holder class
class SearchPageArguments {
  final Key key;
  SearchPageArguments({this.key});
}

import 'package:auto_route/auto_route_annotations.dart';
import 'package:github_stars_flutter/presentation/pages/search_page.dart';
import 'package:github_stars_flutter/presentation/pages/view_all_page.dart';
import 'package:github_stars_flutter/presentation/pages/view_detail_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  ViewAllPage viewAllPage;

  ViewDetailPage viewDetailPage;

  SearchPage searchPage;
}
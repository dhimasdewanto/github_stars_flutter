import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:github_stars_flutter/core/app_settings.dart';
import 'package:github_stars_flutter/data/models/github_stars_api_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GithubStarsNetworkSource {
  GithubStarsNetworkSource({
    @required this.dio,
  });

  static const url =
      "https://api.github.com/search/repositories?q=stars:%3E1&sort=stars";
  final Dio dio;

  Future<GithubStarsApiModel> getGithubStarsApi(int page) async {
    final response = await dio.get(
      url,
      queryParameters: {
        "page": page,
        "per_page": AppSettings.maxItemPerPage,
      },
    );

    return GithubStarsApiModel.fromJson(response.data);
  }
}

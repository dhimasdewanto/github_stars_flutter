import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:github_stars_flutter/core/app_settings.dart';
import 'package:github_stars_flutter/data/models/github_stars_api_model.dart';
import 'package:injectable/injectable.dart';

abstract class GithubStarsNetworkSource {
  Future<GithubStarsApiModel> getGithubStarsApi(
    int page, {
    String searchQuery,
  });
}

@Injectable(as: GithubStarsNetworkSource)
@lazySingleton
class GithubStarsNetworkSourceImpl implements GithubStarsNetworkSource {
  GithubStarsNetworkSourceImpl({
    @required this.dio,
  });

  static const url = "https://api.github.com/search/repositories";
  final Dio dio;

  @override
  Future<GithubStarsApiModel> getGithubStarsApi(
    int page, {
    String searchQuery = "stars:>1",
  }) async {
    final response = await dio.get(
      url,
      queryParameters: {
        "q": searchQuery,
        "sort": "stars",
        "page": page,
        "per_page": AppSettings.maxItemPerPage,
      },
    );

    return GithubStarsApiModel.fromJson(response.data);
  }
}

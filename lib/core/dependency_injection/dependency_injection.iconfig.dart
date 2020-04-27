// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:github_stars_flutter/core/dependency_injection/register_module.dart';
import 'package:github_stars_flutter/data/source/github_stars_network_source.dart';
import 'package:github_stars_flutter/data/repositories/github_stars_repo_data.dart';
import 'package:github_stars_flutter/domain/repositories/github_stars_repo.dart';
import 'package:github_stars_flutter/data/repositories/github_stars_repo_dev.dart';
import 'package:github_stars_flutter/domain/usecases/get_all_github_stars_usecase.dart';
import 'package:github_stars_flutter/presentation/bloc/github_stars/github_stars_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<Dio>(() => registerModule.dio);
  g.registerLazySingleton<GithubStarsNetworkSource>(
      () => GithubStarsNetworkSource(dio: g<Dio>()));
  g.registerLazySingleton<GetAllGithubStarsUsecase>(
      () => GetAllGithubStarsUsecase(repo: g<GithubStarsRepo>()));
  g.registerFactory<GithubStarsBloc>(
      () => GithubStarsBloc(getAllUseCase: g<GetAllGithubStarsUsecase>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<GithubStarsRepo>(() => GithubStarsRepoData(
        githubStarsNetworkSource: g<GithubStarsNetworkSource>()));
  }

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerLazySingleton<GithubStarsRepo>(() => GithubStarsRepoDev(
        githubStarsNetworkSource: g<GithubStarsNetworkSource>()));
  }
}

class _$RegisterModule extends RegisterModule {}

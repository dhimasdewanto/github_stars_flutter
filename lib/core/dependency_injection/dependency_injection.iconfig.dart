// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:github_stars_flutter/core/dependency_injection/register_module.dart';
import 'package:dio/dio.dart';
import 'package:github_stars_flutter/data/source/github_stars_network_source.dart';
import 'package:github_stars_flutter/data/repositories/github_stars_repo_data.dart';
import 'package:github_stars_flutter/domain/repositories/github_stars_repo.dart';
import 'package:github_stars_flutter/data/repositories/github_stars_repo_dev.dart';
import 'package:github_stars_flutter/domain/usecases/search_github_stars_use_case.dart';
import 'package:github_stars_flutter/presentation/bloc/settings/settings_bloc.dart';
import 'package:github_stars_flutter/domain/usecases/get_all_github_stars_use_case.dart';
import 'package:github_stars_flutter/presentation/bloc/github_stars/github_stars_bloc.dart';
import 'package:github_stars_flutter/presentation/bloc/search_github_stars/search_github_stars_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<Dio>(() => registerModule.dio);
  g.registerFactory<GithubStarsNetworkSource>(
      () => GithubStarsNetworkSourceImpl(dio: g<Dio>()));
  g.registerLazySingleton<SearchGithubStarsUseCase>(
      () => SearchGithubStarsUseCase(repo: g<GithubStarsRepo>()));
  g.registerFactory<SettingsBloc>(() => SettingsBloc());
  g.registerLazySingleton<GetAllGithubStarsUseCase>(
      () => GetAllGithubStarsUseCase(repo: g<GithubStarsRepo>()));
  g.registerFactory<GithubStarsBloc>(
      () => GithubStarsBloc(getAllUseCase: g<GetAllGithubStarsUseCase>()));
  g.registerFactory<SearchGithubStarsBloc>(() =>
      SearchGithubStarsBloc(searchUsecase: g<SearchGithubStarsUseCase>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerFactory<GithubStarsRepo>(() => GithubStarsRepoData(
        githubStarsNetworkSource: g<GithubStarsNetworkSource>()));
  }

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerFactory<GithubStarsRepo>(() => GithubStarsRepoDev(
        githubStarsNetworkSource: g<GithubStarsNetworkSource>()));
  }
}

class _$RegisterModule extends RegisterModule {}

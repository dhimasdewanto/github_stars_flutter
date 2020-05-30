import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/domain/usecases/get_all_github_stars_use_case.dart';
import 'package:injectable/injectable.dart';

part 'github_stars_event.dart';
part 'github_stars_state.dart';
part 'github_stars_bloc.freezed.dart';

@injectable
class GithubStarsBloc extends Bloc<GithubStarsEvent, GithubStarsState> {
  GithubStarsBloc({
    @required this.getAllUseCase,
  });

  final GetAllGithubStarsUseCase getAllUseCase;

  @override
  GithubStarsState get initialState => GithubStarsState(
        futureListGithubStars: _getListGithubStars,
      );

  @override
  Stream<GithubStarsState> mapEventToState(
    GithubStarsEvent event,
  ) async* {}

  Future<List<GithubStars>> _getListGithubStars(int page) async {
    final result = await getAllUseCase(
      GetAllGithubStarsUseCaseParams(page: page),
    );
    return result.fold(
      (failure) => null,
      (value) => value,
    );
  }
}

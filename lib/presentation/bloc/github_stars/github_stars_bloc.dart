import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/domain/usecases/get_all_github_stars_usecase.dart';
import 'package:injectable/injectable.dart';

part 'github_stars_event.dart';
part 'github_stars_state.dart';

@injectable
class GithubStarsBloc extends Bloc<GithubStarsEvent, GithubStarsState> {
  GithubStarsBloc({
    @required this.getAllUseCase,
  });

  final GetAllGithubStarsUsecase getAllUseCase;

  @override
  GithubStarsState get initialState => ViewGithubStarsState(
        futureListGithubStars: getAllUseCase.call,
      );

  @override
  Stream<GithubStarsState> mapEventToState(
    GithubStarsEvent event,
  ) async* {}
}

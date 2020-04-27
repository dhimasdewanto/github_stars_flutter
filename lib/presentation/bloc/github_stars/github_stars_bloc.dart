import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/domain/usecases/get_all_github_stars_usecase.dart';
import 'package:github_stars_flutter/domain/usecases/search_github_stars_usecase.dart';
import 'package:injectable/injectable.dart';

part 'github_stars_event.dart';
part 'github_stars_state.dart';

@injectable
class GithubStarsBloc extends Bloc<GithubStarsEvent, GithubStarsState> {
  GithubStarsBloc({
    @required this.getAllUseCase,
    @required this.searchUsecase,
  });

  final GetAllGithubStarsUsecase getAllUseCase;
  final SearchGithubStarsUsecase searchUsecase;

  @override
  GithubStarsState get initialState => ViewGithubStarsState(
        futureListGithubStars: getAllUseCase.call,
      );

  @override
  Stream<GithubStarsState> mapEventToState(
    GithubStarsEvent event,
  ) async* {
    if (event is OpenSearchEvent && state is ViewGithubStarsState) {
      yield OpenSearchState(
        futureListGithubStars: getAllUseCase.call,
      );
    } else if (event is CloseSearchEvent && state is OpenSearchState) {
      yield ViewGithubStarsState(
        futureListGithubStars: getAllUseCase.call,
      );
    } else if (event is SearchingEvent && state is OpenSearchState) {
      final searchFuture = (int page) async {
        return searchUsecase.call(event.searchText, page);
      };

      yield SearchedGithubStarsState(
        futureListGithubStars: searchFuture,
      );
    }
  }
}

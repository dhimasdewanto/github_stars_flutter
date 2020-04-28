import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/domain/usecases/search_github_stars_usecase.dart';
import 'package:injectable/injectable.dart';

part 'search_github_stars_event.dart';
part 'search_github_stars_state.dart';

@injectable
class SearchGithubStarsBloc extends Bloc<SearchGithubStarsEvent, SearchGithubStarsState> {
  SearchGithubStarsBloc({
    @required this.searchUsecase,
  });

  final SearchGithubStarsUsecase searchUsecase;

  @override
  SearchGithubStarsState get initialState => InitialSearchGithubStarsState();

  @override
  Stream<SearchGithubStarsState> mapEventToState(
    SearchGithubStarsEvent event,
  ) async* {
    if (event is SearchEvent) {
      final futureListGithubStars = (int page) async {
        return searchUsecase.call(event.searchText, page);
      };

      yield SearchedGithubStarsState(
        futureListGithubStars: futureListGithubStars,
      );
    }
  }
}

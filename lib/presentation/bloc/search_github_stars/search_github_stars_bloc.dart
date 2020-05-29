import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:github_stars_flutter/domain/entities/github_stars.dart';
import 'package:github_stars_flutter/domain/usecases/search_github_stars_use_case.dart';
import 'package:injectable/injectable.dart';

part 'search_github_stars_event.dart';
part 'search_github_stars_state.dart';

@injectable
class SearchGithubStarsBloc
    extends Bloc<SearchGithubStarsEvent, SearchGithubStarsState> {
  SearchGithubStarsBloc({
    @required this.searchUsecase,
  });

  final SearchGithubStarsUseCase searchUsecase;

  @override
  SearchGithubStarsState get initialState => InitialSearchGithubStarsState();

  @override
  Stream<SearchGithubStarsState> mapEventToState(
    SearchGithubStarsEvent event,
  ) async* {
    if (event is SearchEvent) {
      final Future<List<GithubStars>> Function(int) futureListGithubStars =
          (int page) async {
        final result = await searchUsecase.call(
          SearchGithubStarsUseCaseParams(
            page: page,
            search: event.searchText,
          ),
        );

        return result.fold(
          (failure) => null,
          (value) => value,
        );
      };

      yield SearchedGithubStarsState(
        futureListGithubStars: futureListGithubStars,
      );
    }
  }
}

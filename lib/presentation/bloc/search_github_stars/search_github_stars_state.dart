part of 'search_github_stars_bloc.dart';

@freezed
abstract class SearchGithubStarsState with _$SearchGithubStarsState {
  const factory SearchGithubStarsState.initial() = _InitialSearchState;

  const factory SearchGithubStarsState.result({
    @required
        Future<List<GithubStars>> Function(int index) futureListGithubStars,
  }) = _ResultSearchState;
}

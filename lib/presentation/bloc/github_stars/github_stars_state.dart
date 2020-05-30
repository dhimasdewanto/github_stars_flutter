part of 'github_stars_bloc.dart';

@freezed
abstract class GithubStarsState with _$GithubStarsState {
  const factory GithubStarsState({
    @required
        Future<List<GithubStars>> Function(int index) futureListGithubStars,
  }) = _GithubStarsState;
}
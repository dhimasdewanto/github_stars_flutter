part of 'github_stars_bloc.dart';

abstract class GithubStarsState extends Equatable {
  const GithubStarsState();
}

class ViewGithubStarsState extends GithubStarsState {
  ViewGithubStarsState({
    @required this.futureListGithubStars,
  });

  final Future<List<GithubStars>> Function(int index) futureListGithubStars;

  @override
  List<Object> get props => [futureListGithubStars];
}

class SearchedGithubStarsState extends GithubStarsState {
  SearchedGithubStarsState({
    @required this.futureListGithubStars,
  });

  final Future<List<GithubStars>> Function(int index) futureListGithubStars;

  @override
  List<Object> get props => [futureListGithubStars];
}

class OpenSearchState extends GithubStarsState {
  OpenSearchState({
    @required this.futureListGithubStars,
  });

  final Future<List<GithubStars>> Function(int index) futureListGithubStars;

  @override
  List<Object> get props => [futureListGithubStars];
}

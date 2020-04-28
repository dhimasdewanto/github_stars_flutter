part of 'search_github_stars_bloc.dart';

abstract class SearchGithubStarsState extends Equatable {
  const SearchGithubStarsState();
}

class InitialSearchGithubStarsState extends SearchGithubStarsState {
  @override
  List<Object> get props => null;
}

class SearchedGithubStarsState extends SearchGithubStarsState {
  SearchedGithubStarsState({
    @required this.futureListGithubStars,
  });

  final Future<List<GithubStars>> Function(int index) futureListGithubStars;

  @override
  List<Object> get props => [futureListGithubStars];
}
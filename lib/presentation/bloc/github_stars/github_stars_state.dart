part of 'github_stars_bloc.dart';

abstract class GithubStarsState extends Equatable {
  const GithubStarsState();
}

class InitialGithubStarsState extends GithubStarsState {
  @override
  List<Object> get props => null;
}

class ViewGithubStarsState extends GithubStarsState {
  ViewGithubStarsState({
    @required this.futureListGithubStars,
  });

  final Future<List<GithubStars>> Function(int index) futureListGithubStars;

  @override
  List<Object> get props => [futureListGithubStars];
}

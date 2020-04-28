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
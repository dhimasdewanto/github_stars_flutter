part of 'github_stars_bloc.dart';

abstract class GithubStarsEvent extends Equatable {
  const GithubStarsEvent();
}

class OpenSearchEvent extends GithubStarsEvent {
  @override
  List<Object> get props => null;
}

class CloseSearchEvent extends GithubStarsEvent {
  @override
  List<Object> get props => null;
}

class SearchingEvent extends GithubStarsEvent {
  SearchingEvent({
    @required this.searchText,
  });

  final String searchText;

  @override
  List<Object> get props => [searchText];
}
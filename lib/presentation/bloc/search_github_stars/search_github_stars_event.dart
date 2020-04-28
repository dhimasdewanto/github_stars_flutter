part of 'search_github_stars_bloc.dart';

abstract class SearchGithubStarsEvent extends Equatable {
  const SearchGithubStarsEvent();
}

class SearchEvent extends SearchGithubStarsEvent {
  SearchEvent({
    @required this.searchText,
  });

  final String searchText;

  @override
  List<Object> get props => [searchText];
}

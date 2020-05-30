part of 'search_github_stars_bloc.dart';

@freezed
abstract class SearchGithubStarsEvent with _$SearchGithubStarsEvent {
  const factory SearchGithubStarsEvent({String searchText}) = _SearchingEvent;
}

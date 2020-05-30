part of 'github_stars_bloc.dart';

@freezed
abstract class GithubStarsEvent with _$GithubStarsEvent {
  const factory GithubStarsEvent() = _GithubStarsEvent;
}
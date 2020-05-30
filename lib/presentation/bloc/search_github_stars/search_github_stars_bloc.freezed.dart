// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_github_stars_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchGithubStarsEventTearOff {
  const _$SearchGithubStarsEventTearOff();

  _SearchingEvent call({String searchText}) {
    return _SearchingEvent(
      searchText: searchText,
    );
  }
}

// ignore: unused_element
const $SearchGithubStarsEvent = _$SearchGithubStarsEventTearOff();

mixin _$SearchGithubStarsEvent {
  String get searchText;

  $SearchGithubStarsEventCopyWith<SearchGithubStarsEvent> get copyWith;
}

abstract class $SearchGithubStarsEventCopyWith<$Res> {
  factory $SearchGithubStarsEventCopyWith(SearchGithubStarsEvent value,
          $Res Function(SearchGithubStarsEvent) then) =
      _$SearchGithubStarsEventCopyWithImpl<$Res>;
  $Res call({String searchText});
}

class _$SearchGithubStarsEventCopyWithImpl<$Res>
    implements $SearchGithubStarsEventCopyWith<$Res> {
  _$SearchGithubStarsEventCopyWithImpl(this._value, this._then);

  final SearchGithubStarsEvent _value;
  // ignore: unused_field
  final $Res Function(SearchGithubStarsEvent) _then;

  @override
  $Res call({
    Object searchText = freezed,
  }) {
    return _then(_value.copyWith(
      searchText:
          searchText == freezed ? _value.searchText : searchText as String,
    ));
  }
}

abstract class _$SearchingEventCopyWith<$Res>
    implements $SearchGithubStarsEventCopyWith<$Res> {
  factory _$SearchingEventCopyWith(
          _SearchingEvent value, $Res Function(_SearchingEvent) then) =
      __$SearchingEventCopyWithImpl<$Res>;
  @override
  $Res call({String searchText});
}

class __$SearchingEventCopyWithImpl<$Res>
    extends _$SearchGithubStarsEventCopyWithImpl<$Res>
    implements _$SearchingEventCopyWith<$Res> {
  __$SearchingEventCopyWithImpl(
      _SearchingEvent _value, $Res Function(_SearchingEvent) _then)
      : super(_value, (v) => _then(v as _SearchingEvent));

  @override
  _SearchingEvent get _value => super._value as _SearchingEvent;

  @override
  $Res call({
    Object searchText = freezed,
  }) {
    return _then(_SearchingEvent(
      searchText:
          searchText == freezed ? _value.searchText : searchText as String,
    ));
  }
}

class _$_SearchingEvent
    with DiagnosticableTreeMixin
    implements _SearchingEvent {
  const _$_SearchingEvent({this.searchText});

  @override
  final String searchText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchGithubStarsEvent(searchText: $searchText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchGithubStarsEvent'))
      ..add(DiagnosticsProperty('searchText', searchText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchingEvent &&
            (identical(other.searchText, searchText) ||
                const DeepCollectionEquality()
                    .equals(other.searchText, searchText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchText);

  @override
  _$SearchingEventCopyWith<_SearchingEvent> get copyWith =>
      __$SearchingEventCopyWithImpl<_SearchingEvent>(this, _$identity);
}

abstract class _SearchingEvent implements SearchGithubStarsEvent {
  const factory _SearchingEvent({String searchText}) = _$_SearchingEvent;

  @override
  String get searchText;
  @override
  _$SearchingEventCopyWith<_SearchingEvent> get copyWith;
}

class _$SearchGithubStarsStateTearOff {
  const _$SearchGithubStarsStateTearOff();

  _InitialSearchState initial() {
    return const _InitialSearchState();
  }

  _ResultSearchState result(
      {@required
          Future<List<GithubStars>> Function(int) futureListGithubStars}) {
    return _ResultSearchState(
      futureListGithubStars: futureListGithubStars,
    );
  }
}

// ignore: unused_element
const $SearchGithubStarsState = _$SearchGithubStarsStateTearOff();

mixin _$SearchGithubStarsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result result(
            Future<List<GithubStars>> Function(int) futureListGithubStars),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result result(
        Future<List<GithubStars>> Function(int) futureListGithubStars),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialSearchState value),
    @required Result result(_ResultSearchState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialSearchState value),
    Result result(_ResultSearchState value),
    @required Result orElse(),
  });
}

abstract class $SearchGithubStarsStateCopyWith<$Res> {
  factory $SearchGithubStarsStateCopyWith(SearchGithubStarsState value,
          $Res Function(SearchGithubStarsState) then) =
      _$SearchGithubStarsStateCopyWithImpl<$Res>;
}

class _$SearchGithubStarsStateCopyWithImpl<$Res>
    implements $SearchGithubStarsStateCopyWith<$Res> {
  _$SearchGithubStarsStateCopyWithImpl(this._value, this._then);

  final SearchGithubStarsState _value;
  // ignore: unused_field
  final $Res Function(SearchGithubStarsState) _then;
}

abstract class _$InitialSearchStateCopyWith<$Res> {
  factory _$InitialSearchStateCopyWith(
          _InitialSearchState value, $Res Function(_InitialSearchState) then) =
      __$InitialSearchStateCopyWithImpl<$Res>;
}

class __$InitialSearchStateCopyWithImpl<$Res>
    extends _$SearchGithubStarsStateCopyWithImpl<$Res>
    implements _$InitialSearchStateCopyWith<$Res> {
  __$InitialSearchStateCopyWithImpl(
      _InitialSearchState _value, $Res Function(_InitialSearchState) _then)
      : super(_value, (v) => _then(v as _InitialSearchState));

  @override
  _InitialSearchState get _value => super._value as _InitialSearchState;
}

class _$_InitialSearchState
    with DiagnosticableTreeMixin
    implements _InitialSearchState {
  const _$_InitialSearchState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchGithubStarsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchGithubStarsState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialSearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result result(
            Future<List<GithubStars>> Function(int) futureListGithubStars),
  }) {
    assert(initial != null);
    assert(result != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result result(
        Future<List<GithubStars>> Function(int) futureListGithubStars),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialSearchState value),
    @required Result result(_ResultSearchState value),
  }) {
    assert(initial != null);
    assert(result != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialSearchState value),
    Result result(_ResultSearchState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSearchState implements SearchGithubStarsState {
  const factory _InitialSearchState() = _$_InitialSearchState;
}

abstract class _$ResultSearchStateCopyWith<$Res> {
  factory _$ResultSearchStateCopyWith(
          _ResultSearchState value, $Res Function(_ResultSearchState) then) =
      __$ResultSearchStateCopyWithImpl<$Res>;
  $Res call({Future<List<GithubStars>> Function(int) futureListGithubStars});
}

class __$ResultSearchStateCopyWithImpl<$Res>
    extends _$SearchGithubStarsStateCopyWithImpl<$Res>
    implements _$ResultSearchStateCopyWith<$Res> {
  __$ResultSearchStateCopyWithImpl(
      _ResultSearchState _value, $Res Function(_ResultSearchState) _then)
      : super(_value, (v) => _then(v as _ResultSearchState));

  @override
  _ResultSearchState get _value => super._value as _ResultSearchState;

  @override
  $Res call({
    Object futureListGithubStars = freezed,
  }) {
    return _then(_ResultSearchState(
      futureListGithubStars: futureListGithubStars == freezed
          ? _value.futureListGithubStars
          : futureListGithubStars as Future<List<GithubStars>> Function(int),
    ));
  }
}

class _$_ResultSearchState
    with DiagnosticableTreeMixin
    implements _ResultSearchState {
  const _$_ResultSearchState({@required this.futureListGithubStars})
      : assert(futureListGithubStars != null);

  @override
  final Future<List<GithubStars>> Function(int) futureListGithubStars;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchGithubStarsState.result(futureListGithubStars: $futureListGithubStars)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchGithubStarsState.result'))
      ..add(
          DiagnosticsProperty('futureListGithubStars', futureListGithubStars));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultSearchState &&
            (identical(other.futureListGithubStars, futureListGithubStars) ||
                const DeepCollectionEquality().equals(
                    other.futureListGithubStars, futureListGithubStars)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(futureListGithubStars);

  @override
  _$ResultSearchStateCopyWith<_ResultSearchState> get copyWith =>
      __$ResultSearchStateCopyWithImpl<_ResultSearchState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result result(
            Future<List<GithubStars>> Function(int) futureListGithubStars),
  }) {
    assert(initial != null);
    assert(result != null);
    return result(futureListGithubStars);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result result(
        Future<List<GithubStars>> Function(int) futureListGithubStars),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (result != null) {
      return result(futureListGithubStars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialSearchState value),
    @required Result result(_ResultSearchState value),
  }) {
    assert(initial != null);
    assert(result != null);
    return result(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialSearchState value),
    Result result(_ResultSearchState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class _ResultSearchState implements SearchGithubStarsState {
  const factory _ResultSearchState(
          {@required
              Future<List<GithubStars>> Function(int) futureListGithubStars}) =
      _$_ResultSearchState;

  Future<List<GithubStars>> Function(int) get futureListGithubStars;
  _$ResultSearchStateCopyWith<_ResultSearchState> get copyWith;
}

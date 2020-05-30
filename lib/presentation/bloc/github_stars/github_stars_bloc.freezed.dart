// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'github_stars_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GithubStarsEventTearOff {
  const _$GithubStarsEventTearOff();

  _GithubStarsEvent call() {
    return const _GithubStarsEvent();
  }
}

// ignore: unused_element
const $GithubStarsEvent = _$GithubStarsEventTearOff();

mixin _$GithubStarsEvent {}

abstract class $GithubStarsEventCopyWith<$Res> {
  factory $GithubStarsEventCopyWith(
          GithubStarsEvent value, $Res Function(GithubStarsEvent) then) =
      _$GithubStarsEventCopyWithImpl<$Res>;
}

class _$GithubStarsEventCopyWithImpl<$Res>
    implements $GithubStarsEventCopyWith<$Res> {
  _$GithubStarsEventCopyWithImpl(this._value, this._then);

  final GithubStarsEvent _value;
  // ignore: unused_field
  final $Res Function(GithubStarsEvent) _then;
}

abstract class _$GithubStarsEventCopyWith<$Res> {
  factory _$GithubStarsEventCopyWith(
          _GithubStarsEvent value, $Res Function(_GithubStarsEvent) then) =
      __$GithubStarsEventCopyWithImpl<$Res>;
}

class __$GithubStarsEventCopyWithImpl<$Res>
    extends _$GithubStarsEventCopyWithImpl<$Res>
    implements _$GithubStarsEventCopyWith<$Res> {
  __$GithubStarsEventCopyWithImpl(
      _GithubStarsEvent _value, $Res Function(_GithubStarsEvent) _then)
      : super(_value, (v) => _then(v as _GithubStarsEvent));

  @override
  _GithubStarsEvent get _value => super._value as _GithubStarsEvent;
}

class _$_GithubStarsEvent
    with DiagnosticableTreeMixin
    implements _GithubStarsEvent {
  const _$_GithubStarsEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubStarsEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GithubStarsEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GithubStarsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _GithubStarsEvent implements GithubStarsEvent {
  const factory _GithubStarsEvent() = _$_GithubStarsEvent;
}

class _$GithubStarsStateTearOff {
  const _$GithubStarsStateTearOff();

  _GithubStarsState call(
      {@required
          Future<List<GithubStars>> Function(int) futureListGithubStars}) {
    return _GithubStarsState(
      futureListGithubStars: futureListGithubStars,
    );
  }
}

// ignore: unused_element
const $GithubStarsState = _$GithubStarsStateTearOff();

mixin _$GithubStarsState {
  Future<List<GithubStars>> Function(int) get futureListGithubStars;

  $GithubStarsStateCopyWith<GithubStarsState> get copyWith;
}

abstract class $GithubStarsStateCopyWith<$Res> {
  factory $GithubStarsStateCopyWith(
          GithubStarsState value, $Res Function(GithubStarsState) then) =
      _$GithubStarsStateCopyWithImpl<$Res>;
  $Res call({Future<List<GithubStars>> Function(int) futureListGithubStars});
}

class _$GithubStarsStateCopyWithImpl<$Res>
    implements $GithubStarsStateCopyWith<$Res> {
  _$GithubStarsStateCopyWithImpl(this._value, this._then);

  final GithubStarsState _value;
  // ignore: unused_field
  final $Res Function(GithubStarsState) _then;

  @override
  $Res call({
    Object futureListGithubStars = freezed,
  }) {
    return _then(_value.copyWith(
      futureListGithubStars: futureListGithubStars == freezed
          ? _value.futureListGithubStars
          : futureListGithubStars as Future<List<GithubStars>> Function(int),
    ));
  }
}

abstract class _$GithubStarsStateCopyWith<$Res>
    implements $GithubStarsStateCopyWith<$Res> {
  factory _$GithubStarsStateCopyWith(
          _GithubStarsState value, $Res Function(_GithubStarsState) then) =
      __$GithubStarsStateCopyWithImpl<$Res>;
  @override
  $Res call({Future<List<GithubStars>> Function(int) futureListGithubStars});
}

class __$GithubStarsStateCopyWithImpl<$Res>
    extends _$GithubStarsStateCopyWithImpl<$Res>
    implements _$GithubStarsStateCopyWith<$Res> {
  __$GithubStarsStateCopyWithImpl(
      _GithubStarsState _value, $Res Function(_GithubStarsState) _then)
      : super(_value, (v) => _then(v as _GithubStarsState));

  @override
  _GithubStarsState get _value => super._value as _GithubStarsState;

  @override
  $Res call({
    Object futureListGithubStars = freezed,
  }) {
    return _then(_GithubStarsState(
      futureListGithubStars: futureListGithubStars == freezed
          ? _value.futureListGithubStars
          : futureListGithubStars as Future<List<GithubStars>> Function(int),
    ));
  }
}

class _$_GithubStarsState
    with DiagnosticableTreeMixin
    implements _GithubStarsState {
  const _$_GithubStarsState({@required this.futureListGithubStars})
      : assert(futureListGithubStars != null);

  @override
  final Future<List<GithubStars>> Function(int) futureListGithubStars;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubStarsState(futureListGithubStars: $futureListGithubStars)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GithubStarsState'))
      ..add(
          DiagnosticsProperty('futureListGithubStars', futureListGithubStars));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubStarsState &&
            (identical(other.futureListGithubStars, futureListGithubStars) ||
                const DeepCollectionEquality().equals(
                    other.futureListGithubStars, futureListGithubStars)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(futureListGithubStars);

  @override
  _$GithubStarsStateCopyWith<_GithubStarsState> get copyWith =>
      __$GithubStarsStateCopyWithImpl<_GithubStarsState>(this, _$identity);
}

abstract class _GithubStarsState implements GithubStarsState {
  const factory _GithubStarsState(
          {@required
              Future<List<GithubStars>> Function(int) futureListGithubStars}) =
      _$_GithubStarsState;

  @override
  Future<List<GithubStars>> Function(int) get futureListGithubStars;
  @override
  _$GithubStarsStateCopyWith<_GithubStarsState> get copyWith;
}

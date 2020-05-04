import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class SettingsBloc extends Bloc<ThemeMode, ThemeMode> {
  @override
  ThemeMode get initialState => ThemeMode.system;

  @override
  Stream<ThemeMode> mapEventToState(
    ThemeMode event,
  ) async* {
    yield event;
  }
}

import 'package:flutter/foundation.dart';

@immutable
abstract class Failure {
  Failure({this.message});

  final String message;
}

class DefaultFailure extends Failure {
  DefaultFailure({String message}): super(message: message);
}
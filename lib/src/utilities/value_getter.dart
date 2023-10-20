/*
 Created by Thanh Son on 30/09/2023.
 Copyright (c) 2023 . All rights reserved.
*/
import 'package:flutter/cupertino.dart';

class InternalValueGetter<T> {
  InternalValueGetter([this._foo]);

  factory InternalValueGetter.defaultValue(T defaultValue, [ValueGetter<T>? foo]) =
      _InternalValueGetterWithDefaultValue;

  ValueGetter<T>? _foo;

  bool _closed = false;

  bool get isClose => _closed;

  void close() => _closed = true;

  bool get canExecute => _foo != null;

  // ignore: avoid_setters_without_getters
  set closure(T Function() foo) {
    _foo = foo;
  }

  void avoidOverride(T Function() foo) {
    _foo ??= foo;
  }

  T getValue() {
    if (!_closed && _foo != null) {
      return _foo!.call();
    }
    throw Exception(_foo != null ? 'The getter was not set!' : 'The getter was close!');
  }

  T call() => getValue();
}

class _InternalValueGetterWithDefaultValue<T> extends InternalValueGetter<T> {
  _InternalValueGetterWithDefaultValue(this.defaultValue, [super._foo]);

  final T defaultValue;

  @override
  T getValue() {
    if (!_closed && _foo != null) {
      return _foo!.call();
    }
    return defaultValue;
  }
}

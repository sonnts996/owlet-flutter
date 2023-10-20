/*
 Created by Thanh Son on 18/09/2023.
 Copyright (c) 2023 . All rights reserved.
*/

import 'package:flutter/foundation.dart';

/// In a normal theme, Flutter has two UI modes: light and dark.
/// [LightDartCustomize] is an interface for theme customize with 2 getters, [light] and [dark]
/// always have a valid value.
class LightDartCustomize<T> {
  /// One of the fields,  [light] or [dark], or both must be special.
  /// In case one of them is a null value, the opposite field will be used as default.
  const LightDartCustomize({
    T? dark,
    T? light,
  })  : assert(dark != null || light != null, 'Must have one field has been special.'),
        _dark = dark,
        _light = light;

  const LightDartCustomize._()
      : _dark = null,
        _light = null;

  final T? _light;

  final T? _dark;

  /// Return the [dark] value, if the [dark] value is null, the [light] value will be returned.
  ///
  /// Cause both the [light] and [dark] values can not have null values at the same time, then the returned value is always non-null.
  ///
  /// Please use [LightDarkObject] if you want to customize it.
  @nonVirtual
  T get dark => (_dark ?? _light)!;

  /// Return the [light] value, if the [light] value is null, the [dark] value will be returned.
  ///
  /// Cause both the [light] and [dark] values can not have null values at the same time, then the returned value is always non-null.
  ///
  /// Please override [LightDarkObject] if you want to customize it.
  @nonVirtual
  T get light => (_light ?? _dark)!;

  /// Return true if the [dark] value is special..
  bool get hasDark => _dark != null;

  /// Return true if the [light] value is special.
  bool get hasLight => _light != null;
}

abstract class LightDarkObject<T> extends LightDartCustomize<T> {
  const LightDarkObject() : super._();

  T? get darkValueImpl;

  T? get lightValueImpl;

  @override
  T? get _dark => darkValueImpl;

  @override
  T? get _light => lightValueImpl;
}

/*
 Created by Thanh Son on 18/09/2023.
 Copyright (c) 2023 . All rights reserved.
OrderPaymentEntity*/
import 'dart:ui';

import 'package:flutter/material.dart';

import 'light_dark_customize.dart';

/// Get the theme with [themeMode] brightness.
mixin ThemeModeGetter<T extends Object> on LightDartCustomize<T> {
  /// Return current [ThemeMode]
  ThemeMode get themeMode;

  /// Return the platform brightness.
  Brightness get brightness => PlatformDispatcher.instance.platformBrightness;

  /// Return the true theme's brightness. If the [themeMode] is [ThemeMode.system], the theme's brightness is followed by the platform's brightness
  /// Otherwise, the theme's brightness is followed by [themeMode]
  T get current {
    switch (themeMode) {
      case ThemeMode.system:
        switch (brightness) {
          case Brightness.light:
            return light;
          case Brightness.dark:
            return dark;
        }
      case ThemeMode.light:
        return light;
      case ThemeMode.dark:
        return dark;
    }
  }
}

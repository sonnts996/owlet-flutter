/*
 Created by Thanh Son on 21/09/2023.
 Copyright (c) 2023 . All rights reserved.
*/
library bloc_core;

import 'package:flutter_bloc/flutter_bloc.dart';

import 'logs.dart';

part 'bloc_logging.dart';

class BlocCore<E, S> extends Bloc<E, S> with BlocLogging<E, S> {
  BlocCore(S initialState, {String blocName = 'BlocCore'})
      : _blocName = blocName,
        super(initialState) {
    onBlocCreate(initialState);
  }

  final String _blocName;

  @override
  String get blocName => _blocName;

  @override
  void onError(Object error, StackTrace stackTrace) {
    onBlocError(error, stackTrace);
    super.onError(error, stackTrace);
  }

  @override
  void onChange(Change<S> change) {
    onBlocChange(change.currentState, change.nextState);
    super.onChange(change);
  }

  @override
  void onEvent(E event) {
    onBlocEvent(event);
    super.onEvent(event);
  }

  @override
  Future<void> close() {
    onBlocClose();
    return super.close();
  }
}

/*
 Created by Thanh Son on 21/09/2023.
 Copyright (c) 2023 . All rights reserved.
*/



part of bloc_core;
mixin BlocLogging<Event, State> {
  String get blocName => 'BlocLogging';

  void onBlocCreate(State state) {
    OBLogs.log(
      'BlocCreate: $state',
      name: blocName,
    );
  }

  void onBlocEvent(Event event) {
    OBLogs.log('BlocEvent: ${event.runtimeType}', name: blocName);
  }

  void onBlocError(Object error, StackTrace stackTrace) {
    OBLogs.error(
      message: 'BlocError:',
      name: blocName,
      error: error,
      stackTrace: stackTrace,
    );
  }

  void onBlocChange(State state, State nextState) {
    OBLogs.log(
      'BlocChange: ${state.runtimeType} > ${nextState.runtimeType}',
      name: blocName,
    );
  }

  void onBlocClose() {
    OBLogs.log(
      'BlocClose',
      name: blocName,
    );
  }
}

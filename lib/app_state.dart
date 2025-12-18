import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _zenQuote = '';
  String get zenQuote => _zenQuote;
  set zenQuote(String value) {
    _zenQuote = value;
  }

  List<dynamic> _taskListJSON = [];
  List<dynamic> get taskListJSON => _taskListJSON;
  set taskListJSON(List<dynamic> value) {
    _taskListJSON = value;
  }

  void addToTaskListJSON(dynamic value) {
    taskListJSON.add(value);
  }

  void removeFromTaskListJSON(dynamic value) {
    taskListJSON.remove(value);
  }

  void removeAtIndexFromTaskListJSON(int index) {
    taskListJSON.removeAt(index);
  }

  void updateTaskListJSONAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    taskListJSON[index] = updateFn(_taskListJSON[index]);
  }

  void insertAtIndexInTaskListJSON(int index, dynamic value) {
    taskListJSON.insert(index, value);
  }

  List<dynamic> _translatedTasksJSON = [];
  List<dynamic> get translatedTasksJSON => _translatedTasksJSON;
  set translatedTasksJSON(List<dynamic> value) {
    _translatedTasksJSON = value;
  }

  void addToTranslatedTasksJSON(dynamic value) {
    translatedTasksJSON.add(value);
  }

  void removeFromTranslatedTasksJSON(dynamic value) {
    translatedTasksJSON.remove(value);
  }

  void removeAtIndexFromTranslatedTasksJSON(int index) {
    translatedTasksJSON.removeAt(index);
  }

  void updateTranslatedTasksJSONAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    translatedTasksJSON[index] = updateFn(_translatedTasksJSON[index]);
  }

  void insertAtIndexInTranslatedTasksJSON(int index, dynamic value) {
    translatedTasksJSON.insert(index, value);
  }
}

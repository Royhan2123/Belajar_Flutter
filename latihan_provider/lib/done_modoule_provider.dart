import 'package:flutter/material.dart';

class DoneModuleProvider extends ChangeNotifier {
  final List<String> _doneModulelist = [];

  List<String> get doneModuleLisst => _doneModulelist;

  void complete(String moduleName) {
    _doneModulelist.add(moduleName);
    notifyListeners();
  }
}

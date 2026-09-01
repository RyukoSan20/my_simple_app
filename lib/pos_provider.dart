import 'package:flutter/material.dart';

class PosProvider extends ChangeNotifier {
  int _itemCount = 0;
  int get itemCount => _itemCount;

  void addItem() {
    _itemCount++;
    notifyListeners();
  }
}

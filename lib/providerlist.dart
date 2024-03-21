import 'package:flutter/material.dart';

//import 'package:flutter/cupertino.dart';

class providervar extends ChangeNotifier {
  int counter = 0;

  void add() {
    int num = counter++;
    notifyListeners();
  }
}

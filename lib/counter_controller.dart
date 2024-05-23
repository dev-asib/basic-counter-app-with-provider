import 'package:flutter/material.dart';

class Counter extends ChangeNotifier{

  int counterValue = 0;

  IconData increementIcon = Icons.add;
  IconData deccreementIcon = Icons.remove;
  double iconSize = 40;

  void increementValue(){
    counterValue +=1;
    notifyListeners();
  }

  void decreementValue(){
    counterValue -=1;
    notifyListeners();
  }

}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/counter_controller.dart';
import 'package:provider_state_management/app.dart';

void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>Counter())
    ],
    child: CounterProviderApp(),
    )
  );
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/counter_controller.dart';
import 'package:provider_state_management/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App with Provider"),
      ),
      body: Center(
        child: Text("${provider.counterValue}"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BuildFloatingActionButton(
            increementDecreementIcon: provider.increementIcon,
          ),
          BuildFloatingActionButton(
            increementDecreementIcon: provider.deccreementIcon,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

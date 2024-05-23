import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/counter_controller.dart';

class BuildFloatingActionButton extends StatefulWidget {
  BuildFloatingActionButton({
    super.key,
    required this.increementDecreementIcon,
  });

  IconData increementDecreementIcon;

  @override
  State<BuildFloatingActionButton> createState() =>
      _BuildFloatingActionButtonState();
}

class _BuildFloatingActionButtonState extends State<BuildFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Counter>(context);
    return FloatingActionButton(
      onPressed: () {
        if (widget.increementDecreementIcon == provider.increementIcon) {
          provider.increementValue();
        } else {
          provider.decreementValue();
        }
      },
      child: Icon(
        widget.increementDecreementIcon,
        size: provider.iconSize,
      ),
    );
  }
}

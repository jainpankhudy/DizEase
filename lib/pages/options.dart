import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class optionsBox extends StatefulWidget {
  optionsBox({Key? key}) : super(key: key);

  @override
  State<optionsBox> createState() => _optionsBoxState();
}

class _optionsBoxState extends State<optionsBox> {
  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: null,
      message: null,
      actions: [
        CupertinoActionSheetAction(onPressed: (() {
          
        }), child: const Text('Mail Us')),

        CupertinoActionSheetAction(onPressed: (() {
          Navigator.pop(context);
        }), isDestructiveAction: true, child: const Text('Done'),),

      ],
    );
  }
}
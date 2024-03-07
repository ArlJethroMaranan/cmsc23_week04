import 'package:flutter/material.dart';

class CheckBoxSample extends StatefulWidget {
  const CheckBoxSample({super.key});

  @override
  State<CheckBoxSample> createState() => _CheckBoxSampleState();
}

class _CheckBoxSampleState extends State<CheckBoxSample> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text("Keep me logged in"),
      value: isChecked,
      onChanged: (value) => {
        setState(() {
          isChecked = value;
        })
      },
    );
  }
}


import 'package:flutter/material.dart';

class TextFieldSample extends StatefulWidget {
  const TextFieldSample({super.key});

  @override
  State<TextFieldSample> createState() => _TextFieldSampleState();
}

class _TextFieldSampleState extends State<TextFieldSample> {
  String input = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          validator: (value) {
            if (input == "") return "No empty strings";
            return null;
          },
          onChanged: (value) => {
            setState(() {
              input = value;
            })
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter name [HintText]",
            // label: Text("Enter name [Label]"),
            labelText: "Enter name [LabelText]"
          ),
        ),
        Text(input)
      ],
    );
  }
}
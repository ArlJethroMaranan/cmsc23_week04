import 'package:flutter/material.dart';

class TextFieldControllerSample extends StatefulWidget {
  const TextFieldControllerSample({super.key});

  @override
  State<TextFieldControllerSample> createState() => _TextFieldControllerSampleState();
}

class _TextFieldControllerSampleState extends State<TextFieldControllerSample> {
  final TextEditingController controller = TextEditingController();
  String input = "";

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        input = controller.text;
      });
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          TextField(
          controller: controller,
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


import 'package:flutter/material.dart';
import 'package:my_app_2/checkbox_sample.dart';
import 'package:my_app_2/dropdown_sample.dart';
import 'package:my_app_2/textfield_controller_sample.dart';
import 'package:my_app_2/button_sample.dart';
import 'package:my_app_2/textfield_sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("UI Demo")),
        body: Container(
          margin: const EdgeInsets.all(18),
          child: const Center(
            child: FormSample(),
          ),
        )
      )
    );
  }
}

class FormSample extends StatefulWidget {
  const FormSample({super.key});

  @override
  State<FormSample> createState() => _FormSampleState();
}

class _FormSampleState extends State<FormSample> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround ,
        children: [
          const ButtonSample(),
          const TextFieldSample(),
          const CheckBoxSample(),
          const DropDownSample(),
          OutlinedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                print("Success");
                formKey.currentState!.save();
              } else {
                print("Failed");
              }
            },
            child: const Icon(Icons.send)
          )
        ],
      ),
    );
  }
}
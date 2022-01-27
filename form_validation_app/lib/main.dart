import 'package:flutter/material.dart';
import 'package:text_form_field_validator/text_form_field_validator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) => FormValidator.validate(
                      value,
                      required: true,
                      min: 4,
                      max: 200,
                      regex: RegExp(
                          r"^[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com$"),
                    ),
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("validation passed");
                    }
                  },
                  child: const Text("Validate"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

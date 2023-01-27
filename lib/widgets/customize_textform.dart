import 'package:flutter/material.dart';

class CustomizeTextForm extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hinText;
  const CustomizeTextForm({Key? key, required this.textEditingController, required this.hinText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          alignLabelWithHint: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Color(0xFFff0036), width: 3)),
          hintText: hinText,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}

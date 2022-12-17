import 'package:flutter/material.dart';

class CustomizeTextForm extends StatelessWidget {
  final TextEditingController textEditingController;

    const CustomizeTextForm({Key? key, required this.textEditingController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Color(0xFFff0036), width: 3,),
            )
        ),
      ),
    );
  }
}

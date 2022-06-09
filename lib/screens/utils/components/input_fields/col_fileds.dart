import 'package:flutter/material.dart';
import 'text_field.dart';

class ColumnFields extends StatelessWidget {
  final String firstLabel;
   TextEditingController textEditingController =TextEditingController();

  ColumnFields({
    Key? key,
    required this.firstLabel,
     required this.textEditingController
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputTextField(label: firstLabel,
    textFieldController: textEditingController,
    )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../themes/borders.dart';

class InputTextField extends StatelessWidget {
  final String label;
  TextEditingController textFieldController = TextEditingController();

  InputTextField({
    Key? key,
    required this.label,
    required this.textFieldController

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        controller: textFieldController,
        decoration: InputDecoration(
          focusedBorder: outBorderFocusedBorder,
          enabledBorder: outBorderEnabledBorder,
          labelText: label,
          hintText: "Only 3 digit"
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(3),
      FilteringTextInputFormatter.allow(RegExp('[0-9]')),
        ],
      ),
    );
  }
}

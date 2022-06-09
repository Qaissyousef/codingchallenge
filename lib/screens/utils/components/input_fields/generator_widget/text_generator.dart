

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../themes/borders.dart';

class TextGenerator extends StatelessWidget {
  final String label;
  final bool isText;
  final int maxLength;
  TextEditingController textFieldController = TextEditingController();

  TextGenerator(
      {Key? key,
        required this.label,
        required this.textFieldController,
        required this.isText,
        required this.maxLength

      })
      : super(key: key);

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
            hintText:isText? "Aa":"01"
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxLength),
          isText?
          FilteringTextInputFormatter.deny(''):
          FilteringTextInputFormatter.allow(RegExp('[0-9]')),
        ],
      ),
    );
  }
}

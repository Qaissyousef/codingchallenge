
import 'package:codeing_challenge_ai/models/data.dart';
import 'package:flutter/material.dart';

import '../../../../themes/borders.dart';

class DropDownList extends StatelessWidget {
  Function(Data? employee)? onChanged;
  Data? data;
  List<Data>? dataa;

  DropDownList({
    Key? key,
    this.onChanged,
    this.data,
    this.dataa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: InputDecorator(
        decoration: const InputDecoration(
          focusedBorder: outBorderFocusedBorder,
          enabledBorder: outBorderEnabledBorder,
          labelText: "Data Type *",
          isDense: true
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<Data>(
            menuMaxHeight: 150,
            focusColor: Colors.transparent,
            value: data,
            hint: const Text("Select Data Type"),
            onChanged: (value) {
              onChanged?.call(value);
            },
            items: dataa?.map((Data? data) {
              return DropdownMenuItem<Data>(
                value: data,
                child: Text(
                  data?.type ?? "Data Type",
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

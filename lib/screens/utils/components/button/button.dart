import 'package:flutter/material.dart';

import '../../../../themes/colors.dart';

class Button extends StatelessWidget {
  final VoidCallback onTap;
  final IconData iconData;
  final String btnTitle;
  const Button({Key? key, required this.onTap, required this.iconData, required this.btnTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(primary: purple800),
          onPressed: onTap,
          label:  Text(btnTitle),
          icon:  Icon(iconData),

        ));
  }
}

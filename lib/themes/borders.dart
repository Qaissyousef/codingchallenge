import 'package:flutter/material.dart';

import 'colors.dart';

const OutlineInputBorder outBorderFocusedBorder = OutlineInputBorder(borderSide: BorderSide(color: purple200, width: 2));
const OutlineInputBorder outBorderEnabledBorder = OutlineInputBorder(borderSide: BorderSide(color: grey100, width: 0.7));

const BoxDecoration boxDecorationRadiusTop3px = BoxDecoration(color: purple800, borderRadius: BorderRadius.only(topLeft: Radius.circular(3.0), topRight: Radius.circular(3.0)));

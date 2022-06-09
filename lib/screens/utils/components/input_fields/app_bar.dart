import 'package:flutter/material.dart';

import '../../../../themes/colors.dart';

class AiAppBar extends StatelessWidget {
  final String title;
  const AiAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: purple800,
      title:  Text(title),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: purple200,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.share,
            color: purple200,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.search,
            color: purple200,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

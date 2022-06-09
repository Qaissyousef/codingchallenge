import 'package:flutter/material.dart';

import '../themes/Strings.dart';
import 'utils/components/input_fields/app_bar.dart';
import 'utils/components/third_page_body.dart';


class ThirdPage
    extends StatelessWidget {
  static const String routeName = "/third_page";

  const ThirdPage
      ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
        ),
      ),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AiAppBar(title: thirdPageAppBar,),
      ),
      body:  const ThirdPageBody(),
    );
  }
}

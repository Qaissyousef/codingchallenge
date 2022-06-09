import 'package:flutter/material.dart';
import 'utils/components/input_fields/app_bar.dart';
import 'utils/components/first_page_body.dart';

class FirstPage extends StatelessWidget {
  static const String routeName = "/";

  const FirstPage({Key? key}) : super(key: key);

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
        child: AiAppBar(title: "Ai Elements",),
      ),
      body:   FirstScreenBody(),
    );
  }
}

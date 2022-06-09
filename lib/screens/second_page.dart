import 'package:flutter/material.dart';

import '../themes/Strings.dart';
import 'utils/components/input_fields/app_bar.dart';
import 'utils/components/second_page_body.dart';


class SecondPage extends StatefulWidget {
  static const String routeName = "/second_page";
  final int id;
  final int NoFields;
  const SecondPage({Key? key, required this.id, required this.NoFields}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
        child: AiAppBar(title: secondPageAppBar,),
      ),
      body:   SingleChildScrollView(
        child: SecondPageBody(
          id: widget.id,
          countFields: widget.NoFields,
        ),
      ),
    );
  }
}

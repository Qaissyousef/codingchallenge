
import 'package:flutter/material.dart';
import '../../../themes/Strings.dart';
import '../../../themes/constan.dart';
import '../../second_page.dart';
import 'button/button.dart';

import 'input_fields/input_fields.dart';
import 'navigator.dart';

class FirstScreenBody extends StatelessWidget {
   FirstScreenBody({Key? key}) : super(key: key);
  TextEditingController textEditingController =TextEditingController();
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            InputFields(
              textEditingController:textEditingController ,
            ),
          const SizedBox(height: 40),
           Button(onTap: ()
           {
            navigateAndFinish(context,
                SecondPage(
                  NoFields: int.parse(textEditingController.text),
                  id: id,));
           },btnTitle: btnNext,iconData: Icons.double_arrow_rounded,),
        ],
      ),
    ));
  }
}

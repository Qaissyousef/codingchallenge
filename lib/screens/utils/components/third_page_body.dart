
import 'package:flutter/material.dart';
import '../../../app_router.dart';
import '../../../main.dart';
import '../../../themes/Strings.dart';
import 'button/button.dart';
import 'navigator.dart';


class ThirdPageBody extends StatelessWidget {
  const ThirdPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Button(onTap: ()
              {
               navigateAndFinish(context, MyApp(appRouter: AppRouter()));
              },btnTitle: btnNewForm,iconData: Icons.assistant,),
            ],
          ),
        ));
  }
}

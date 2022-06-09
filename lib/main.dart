import 'package:codeing_challenge_ai/themes/colors.dart';
import 'package:flutter/material.dart';

import 'app_router.dart';


void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));

}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        initialRoute: '/',
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child ?? Container(),
          );
        },
        debugShowCheckedModeBanner: false,
        title: 'Ai Elements',
        theme: ThemeData(
          primarySwatch: primaryColor,
        ),
        onGenerateRoute: appRouter.generateRoute,
      );
  }
}

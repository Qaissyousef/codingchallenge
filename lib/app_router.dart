
import 'package:codeing_challenge_ai/screens/first_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/local_storage/data_service.dart';
import 'core/repository/data_repository.dart';
import 'cubit/data_cubit.dart';


class AppRouter {

  late DataRepository repository;

  AppRouter() {
    repository = DataRepository(dataService: DataService());
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case FirstPage.routeName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => DataCubit(repository: repository),
            child: const FirstPage(),
          ),
        );
      default:
        return null;
    }
  }
}

// Map<String, WidgetBuilder> routes() {
//   return <String, WidgetBuilder>{
//     // SecondPage.routeName: (context) => SecondPage(),
//     ThirdPage.routeName: (context) => ThirdPage(),
//   };
// }



import 'package:codeing_challenge_ai/core/local_storage/data_service.dart';

import '../../models/data.dart';

class DataRepository {
  final DataService dataService;

  DataRepository({required this.dataService});

  Future<List<Data>?> fetchData() async {
    return dataService.fetchData();
  }

}

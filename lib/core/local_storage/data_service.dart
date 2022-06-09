import 'package:flutter/services.dart';

import '../../models/data.dart';

class DataService {


  Future<List<Data>?> fetchData() async {
    try {
      String dataList = await rootBundle.loadString('assets/local_data.json');
      return Data.decode(dataList);
    } catch (ex) {
      return null;
    }
  }


}

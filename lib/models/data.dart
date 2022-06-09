import 'dart:convert';


class Data {
  int? id;
  String? type;


  Data({
    this.id,
    this.type,

  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
  }


  static Map<String, dynamic> toMap(Data data) => {
        'id': data.id,
        'name': data.type,
      };

  static String encode(List<Data> datas) => json.encode(
        datas.map<Map<String, dynamic>>((data) => Data.toMap(data)).toList(),
      );

  static List<Data> decode(String data) => (json.decode(data) as List<dynamic>).map<Data>((dataa) => Data.fromJson(dataa)).toList();

}

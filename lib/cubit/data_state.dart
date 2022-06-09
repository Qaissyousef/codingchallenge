

import '../models/data.dart';

abstract class DataState {}

class DataInit extends DataState {}

class DataLoaded extends DataState {
  List<Data>? data;
  DataLoaded({this.data});
}


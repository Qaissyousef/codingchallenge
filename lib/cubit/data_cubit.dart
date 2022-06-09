import '../core/repository/data_repository.dart';
import 'data_state.dart';
import 'package:bloc/bloc.dart';

class DataCubit extends Cubit<DataState> {
  final DataRepository repository;

  DataCubit({required this.repository}) : super(DataInit());

  void fetchEmployees() {
    repository.fetchData().then((dataa) {
      emit(DataLoaded(data: dataa));
    });
  }

}


import 'package:codeing_challenge_ai/models/data.dart';
import 'package:flutter/material.dart';
import '../../../../cubit/data_cubit.dart';
import '../../../../cubit/data_state.dart';
import '../../../../themes/constan.dart';
import 'drop_down_list.dart';
import 'col_fileds.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputFields extends StatefulWidget {
  TextEditingController textEditingController =TextEditingController();
   InputFields({
    Key? key,
     required this.textEditingController
  }) : super(key: key);

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  Data? data;
  List<Data>? dataa;

  @override
  void initState() {
    BlocProvider.of<DataCubit>(context).fetchEmployees();
    super.initState();
  }

  void updateData(Data? value) {
    setState(() {
      data = value;
      id=value!.id!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildEmployeeDropDownListBloc(),
        const SizedBox(height: 20),
        ColumnFields(
          firstLabel: "Number of Fields *",
          textEditingController: widget.textEditingController,

        ),
      ],
    );
  }

  Widget buildEmployeeDropDownListBloc() {
    return BlocBuilder<DataCubit, DataState>(builder: (BuildContext context, state) {
      if (state is DataInit) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is DataLoaded) {
        dataa = state.data;
      }
      return
        DropDownList(
        data: data,
        dataa: dataa,
        onChanged: updateData,
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../themes/Strings.dart';
import '../../third_page.dart';
import 'button/button.dart';
import 'navigator.dart';

class SecondPageBody extends StatefulWidget {
  final int id;
  final int countFields;
  const SecondPageBody({
    Key? key,
    required this.id,
    required this.countFields,
  }) : super(key: key);

  @override
  _SecondPageBodyState createState() => _SecondPageBodyState();
}

class _SecondPageBodyState extends State<SecondPageBody> {
  final List<TextEditingController> _controllers = [];

  final List<TextField> _fields = [];
  final List<TextFormField> _formFields = [];
  final List<TextFormField> _dateFormFields = [];


  @override
  void initState() {
    widget.id == 1
        ? _addText()
        : widget.id == 2
            ? _addNumber()
            : _addDate();
    super.initState();
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }


    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: widget.countFields,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget.id == 1
                        ? Container(
                            margin: const EdgeInsets.all(5),
                            child: _fields[index],
                          )
                        : widget.id == 2
                            ? Container(
                                margin: const EdgeInsets.all(5),
                                child: _formFields[index],
                              )
                            :
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: _dateFormFields[index],
                    )
                  ],
                );
              }),
          const SizedBox(height: 40),

          Button(
            onTap: () async {
              String text = _controllers
                  .where((element) => element.text != "")
                  .fold("", (acc, element) => acc += "${element.text}\n");
              final alert = AlertDialog(
                title: Text("Count: ${_controllers.length - 1}"),
                content: Text(text.trim()),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      Navigator.pop(context);
                      navigateAndFinish(context,  const ThirdPage());
                    },
                  ),
                ],
              );

              await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                        physics: const BouncingScrollPhysics(), child: alert);
                  });

              setState(() {});
            },
            btnTitle: btnSave,
            iconData: Icons.save_alt,
          )
        ],
      ),
    );
  }

  void _addText() {
    for (int i = 0; i <= widget.countFields; i++) {
      final controller = TextEditingController();
      final field = TextField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "Text  ${_controllers.length + 1}",
        ),
      );

      setState(() {
        _controllers.add(controller);
        _fields.add(field);
      });
    }
  }

  void _addNumber() {
    for (int i = 0; i <= widget.countFields; i++) {
      final controller = TextEditingController();
      final field = TextFormField(
        controller: controller,
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "Number  ${_controllers.length + 1}",
        ),
      );

      setState(() {
        _controllers.add(controller);
        _formFields.add(field);
      });
    }
  }

  void _addDate() {
    for (int i = 0; i <= widget.countFields; i++) {
      final controller = TextEditingController();
      final field = TextFormField(
        controller: controller,
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "Date  ${_controllers.length + 1}",
        ),
      );

      setState(() {
        _controllers.add(controller);
        _dateFormFields.add(field);
      });
    }
  }
}

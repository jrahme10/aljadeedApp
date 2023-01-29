import 'package:flutter/material.dart';

class InputTextField extends StatefulWidget {
  final String? hintText;
  final bool asDropdown;

  const InputTextField({
    Key? key,
    this.hintText,
    required this.asDropdown,
  }) : super(key: key);

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  String inputValue = "";
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Color.fromARGB(255, 136, 136, 136),
        fontSize: 14,
        fontFamily: "Almarai",
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 136, 136, 136),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromARGB(255, 30, 34, 46),
          ),
          borderRadius: BorderRadius.circular(7.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromARGB(255, 30, 34, 46),
          ),
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
      readOnly: widget.asDropdown,
      controller: _textController,
      onTap: () {
        if (widget.asDropdown == true) {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 200,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      OutlinedButton(
                        onPressed: () {
                          _textController.text = "لبنان";
                          Navigator.pop(context, _textController);
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                              color: Colors.transparent, width: 0),
                          foregroundColor: Theme.of(context).primaryColorLight,
                          fixedSize:
                              Size.fromWidth(MediaQuery.of(context).size.width),
                        ),
                        child: const Text("لبنان"),
                      ),
                      Container(
                        height: 1,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(30, 0, 0, 0)),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          _textController.text = "قبرص";
                          Navigator.pop(context, _textController);
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                              color: Colors.transparent, width: 0),
                          foregroundColor: Theme.of(context).primaryColorLight,
                          fixedSize:
                              Size.fromWidth(MediaQuery.of(context).size.width),
                        ),
                        child: const Text("قبرص"),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}

import 'package:flutter/material.dart';

class InputButton extends StatefulWidget {
  const InputButton({super.key});

  @override
  State<InputButton> createState() => _InputButtonState();
}

class _InputButtonState extends State<InputButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
        backgroundColor: const Color.fromARGB(255, 127, 29, 14),
        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        padding: const EdgeInsets.fromLTRB(0, 17, 0, 17),
      ),
      child: Text(
        'تسجيل',
        style: TextStyle(
          color: Theme.of(context).primaryColorDark,
          fontSize: 18,
          fontFamily: 'AlmaraiBold',
        ),
      ),
    );
  }
}

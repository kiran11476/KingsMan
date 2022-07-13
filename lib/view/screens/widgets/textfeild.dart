import 'package:flutter/cupertino.dart';

class PasswordField extends StatelessWidget {
  final String hinttext;
  const PasswordField({Key? key, required this.hinttext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: CupertinoTextFormFieldRow(
        placeholder: hinttext,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: CupertinoColors.white,
            border: Border.all(color: CupertinoColors.white)),
      ),
    );
  }
}

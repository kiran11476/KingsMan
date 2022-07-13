import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kingsman/view/screens/screen1_log.dart';

void main() {
  runApp(const MyAp());
}

class MyAp extends StatelessWidget {
  const MyAp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetCupertinoApp(
        debugShowCheckedModeBanner: false, home: LogInScreen());
  }
}

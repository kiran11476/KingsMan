import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:kingsman/view/screens/homepage.dart';

import 'package:kingsman/view/screens/widgets/background_image.dart';

import 'package:kingsman/view/screens/widgets/widgets.dart';

import 'widgets/textfeild.dart';

late Size size;

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: kingsman,
        body: SafeArea(
          child: Stack(
            children: [
              const BackgroundImage(
                  image:
                      'https://t3.ftcdn.net/jpg/03/67/38/78/360_F_367387846_OKdglMdC8NSHIaW65XUoiVfTjErAcOdr.jpg'),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hey ,\nLogin Now.',
                        style: GoogleFonts.dosis(
                          textStyle: const TextStyle(
                            color: CupertinoColors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: PasswordField(hinttext: 'Enter your Email')),
                  const PasswordField(hinttext: 'Enter your Password'),
                  CupertinoButton(
                    color: const Color.fromARGB(147, 227, 237, 229),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (ctx) => HomePage()));
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (ctx) => const HomePage()));
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Do you have an account?\t',
                        style: TextStyle(color: CupertinoColors.white),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: CupertinoColors.activeBlue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

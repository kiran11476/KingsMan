import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kingsman/view/screens/widgets/background_image.dart';
import 'package:kingsman/view/screens/widgets/textfeild.dart';
import 'package:kingsman/view/screens/widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: kingsman,
        child: SafeArea(
            child: Stack(
          children: [
            const BackgroundImage(
                image:
                    'https://t3.ftcdn.net/jpg/03/67/38/78/360_F_367387846_OKdglMdC8NSHIaW65XUoiVfTjErAcOdr.jpg'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Signup Now',
                  style: GoogleFonts.lora(
                    textStyle: const TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                kheight20,
                const PasswordField(hinttext: 'Name....'),
                kheight20,
                const PasswordField(hinttext: 'Mobile....'),
                kheight20,
                const PasswordField(hinttext: 'Email....'),
                kheight20,
                const PasswordField(hinttext: 'Password....'),
                kheight20,
                const PasswordField(hinttext: 'Confirm Password....'),
                kheight20,
                CupertinoButton(
                  color: const Color.fromARGB(147, 227, 237, 229),
                  onPressed: () {},
                  child: const Text(
                    "Register Now",
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Do you have an account?',
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(color: CupertinoColors.activeBlue),
                    ),
                  ],
                ),
              ],
            )
          ],
        )));
  }
}

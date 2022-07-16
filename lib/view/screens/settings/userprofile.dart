import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:kingsman/view/screens/widgets/headingtext.dart';
import 'package:kingsman/view/screens/widgets/textformfeild.dart';

class AddAddressPage extends StatelessWidget {
  const AddAddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
          backgroundColor: Colors.black,
          title: const Text(
            'KingsMan',
            style: TextStyle(color: CupertinoColors.systemYellow),
          )),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          shrinkWrap: false,
          children: [
            const HeadingText(headingText: 'Add Address'),
            const TextandFormFieldWidget(
                headingText: 'Full Name', hintText: 'Enter your Name'),
            const TextandFormFieldWidget(
                headingText: 'Mobile Number',
                hintText: 'Enter your Mobile Number'),
            const TextandFormFieldWidget(
                headingText: 'Pin Code', hintText: 'Enter your Pincode'),
            const TextandFormFieldWidget(
                headingText: 'Flat,House No,Building Name',
                hintText: 'Enter your House No,Building Name,Flat'),
            const TextandFormFieldWidget(
                headingText: 'Road Name, Area , Colony',
                hintText: 'Enter yourRoad Name, Area , Colony'),
            const TextandFormFieldWidget(
                headingText: 'Town/City', hintText: 'Enter your Town/City'),
            const TextandFormFieldWidget(
                headingText: 'State', hintText: 'Select the State'),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: CupertinoButton.filled(
                  child: const Text('Ok'), onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}

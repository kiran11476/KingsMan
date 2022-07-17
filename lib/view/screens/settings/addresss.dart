import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            )),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            shrinkWrap: false,
            children: const [
              HeadingText(headingText: 'Add Address'),
              TextandFormFieldWidget(
                  headingText: 'Full Name', hintText: 'Enter your Name'),
              TextandFormFieldWidget(
                  headingText: 'Mobile Number',
                  hintText: 'Enter your Mobile Number'),
              TextandFormFieldWidget(
                  headingText: 'Pin Code', hintText: 'Enter your Pincode'),
              TextandFormFieldWidget(
                  headingText: 'Flat,House No,Building Name',
                  hintText: 'Enter your House No,Building Name,Flat'),
              TextandFormFieldWidget(
                  headingText: 'Road Name, Area , Colony',
                  hintText: 'Enter yourRoad Name, Area , Colony'),
              TextandFormFieldWidget(
                  headingText: 'Town/City', hintText: 'Enter your Town/City'),
              TextandFormFieldWidget(
                  headingText: 'State', hintText: 'Select the State'),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromARGB(255, 105, 8, 3)),
            height: 50,
            width: double.infinity,
            child: Text(
              "Procced to check Out",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontSize: 20, color: Theme.of(context).canvasColor),
              ),
            ),
          ),
        ));
  }
}

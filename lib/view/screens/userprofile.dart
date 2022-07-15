import 'package:flutter/material.dart';
import 'package:kingsman/view/screens/widgets/headingtext.dart';
import 'package:kingsman/view/screens/widgets/textformfeild.dart';

class AddAddressPage extends StatelessWidget {
  const AddAddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const HeadingText(headingText: 'Add Address'),
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
              headingText: 'Landmark', hintText: 'Nearest LandMark'),
          TextandFormFieldWidget(
              headingText: 'Town/City', hintText: 'Enter your Town/City'),
          TextandFormFieldWidget(
              headingText: 'State', hintText: 'Select the State'),
          TextandFormFieldWidget(
              headingText: 'Address Type',
              hintText: 'Select your Address Type'),
        ],
      ),
    );
  }
}

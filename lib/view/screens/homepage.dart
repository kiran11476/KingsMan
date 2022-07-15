import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kingsman/controller/cubit/bottom_nav_cubit.dart';
import 'package:kingsman/view/screens/ssssscreen.dart';
import 'package:kingsman/view/screens/screen2_signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = const [
      HomeScreen(),
      SignUpPage(),
      SignUpPage(),
    ];
    return BlocBuilder<BottomNavCubit, Bottombutton>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'KingsMan',
              style: TextStyle(color: Colors.yellow),
            ),
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
          body: pages[state.currentindex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.currentindex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                label: 'Wishlist',
                icon: Icon(Icons.favorite),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings),
              ),
            ],
            onTap: (index) {
              context.read<BottomNavCubit>().index(index);
            },
          ),
        );
      },
    );
  }
}

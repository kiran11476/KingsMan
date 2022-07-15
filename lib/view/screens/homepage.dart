import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kingsman/controller/cubit/bottom_nav_cubit.dart';
import 'package:kingsman/view/screens/settings.dart';
import 'package:kingsman/view/screens/ssssscreen.dart';

import 'package:kingsman/view/screens/wishlist.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = const [
      HomeScreen(),
      ScreenWishList(),
      ScreenSetting()
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
                label: 'Add to cart',
                icon: Icon(Icons.shopping_cart_outlined),
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

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: carousel(),
      ),
    );
  }
}

class carousel extends StatelessWidget {
  const carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          width: 400,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://static.zara.net/photos///2022/V/0/1/p/8197/231/400/2/w/438/8197231400_6_1_1.jpg?ts=1646738706507'),
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
          autoPlay: true, enlargeCenterPage: true, enableInfiniteScroll: true),
    );
  }
}

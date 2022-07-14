import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Carousel(),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Card(
                color: Colors.black26,
                child: Column(
                  children: const [
                    SizedBox(
                      height: 100,
                      width: 150,
                      child: Image(
                        image: NetworkImage(
                            'https://financesonline.com/uploads/2014/07/cartier2.jpg'),
                      ),
                    ),
                    Text('Shoe'),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  const Carousel({
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
                  'https://financesonline.com/uploads/2014/07/cartier2.jpg'),
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

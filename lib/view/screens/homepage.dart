import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:kingsman/view/screens/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color.fromRGBO(38, 27, 61, .3),
      navigationBar: kingsman,
      child: SafeArea(
        child: Column(children: [
          const Carousel(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(123, 79, 48, 146)),
                ),
                onPressed: () {},
                child: const Text('Shoes'),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(123, 79, 48, 146)),
                ),
                onPressed: () {},
                child: const Text('Glasses'),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(123, 79, 48, 146)),
                ),
                onPressed: () {},
                child: const Text('Watche'),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 250,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 100,
                        width: 150,
                        child: Image(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj7Vmct8uCO4MTxe6SPOTUG3BvJ9ghxq-fxw&usqp=CAU'),
                        ),
                      ),
                      Text('Shoe'),
                    ],
                  ),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://i.pinimg.com/736x/4a/91/a6/4a91a6b4f09c7df99a6352db06f7a701.jpg'),
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ),
      ],
      options: CarouselOptions(
          autoPlay: true, enlargeCenterPage: true, enableInfiniteScroll: true),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '_widgets.dart';

class SlideShow extends HookWidget {
  SlideShow({Key? key}) : super(key: key);

  final imgList = [
    "assets/images/vacation/vacation1.jpg",
    "assets/images/vacation/vacation2.jpg",
    "assets/images/vacation/vacation3.jpg",
    "assets/images/vacation/vacation4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final slideIndex = useState(0);

    Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 280,
                    child: Text(
                      "Furama Riverfront, Singapore,",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/nextred/nextred@3x.png",
                    height: 32,
                    width: 32,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 280,
                    child: Text(
                      "405 Havelock Road, Singapore 169633",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/currentlocation/currentlocation@3x.png",
                    height: 32,
                    width: 32,
                  ),
                ],
              ),
            ],
          ),
        ),
        Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                initialPage: slideIndex.value,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  slideIndex.value = index;
                },
              ),
              items: imgList
                  .map((item) => Container(
                        margin: const EdgeInsets.all(8),
                        child: Center(
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            height: 160,
                            width: 1000,
                          ),
                        ),
                      ))
                  .toList(),
            ),
            Positioned(
              top: 165,
              left: width - 120,
              child: ClipPath(
                clipper: Customshape(),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 16,
                    top: 8,
                    bottom: 8,
                  ),
                  color: Colors.black54,
                  child: Text(
                    "See all ${slideIndex.value + 1}/${imgList.length}",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

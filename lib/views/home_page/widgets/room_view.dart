import 'package:codigo_ui/views/home_page/widgets/_widgets.dart';
import 'package:flutter/material.dart';

final imgList = [
  "assets/images/vacation/vacation5.jpg",
  "assets/images/vacation/vacation4.jpg",
];

class RoomView extends StatelessWidget {
  const RoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: imgList.length * 2 - 1,
        itemBuilder: (BuildContext context, int i) {
          if (i % 2 == 0) {
            return RoomCard(imgUrl: imgList[i ~/ 2]);
          }
          return Column(
            children: const [
              Divider(color: Colors.black87, thickness: 1.2),
              SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  const RoomCard({Key? key, required this.imgUrl}) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imgUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Deluxe Twin",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Twin Single Beds, Cable TV, Free Wifi, 24 Service",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            ViewRatesButton(onTap: () {}),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              "Avg. Nightly / Room From",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Expanded(child: SizedBox()),
            Text(
              "SGD",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 4),
            Text(
              "161.42",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

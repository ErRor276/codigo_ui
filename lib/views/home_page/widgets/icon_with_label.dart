import 'package:flutter/material.dart';

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({
    Key? key,
    required this.imgUrl,
    this.label = '',
  }) : super(key: key);

  final String imgUrl;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 60, maxWidth: 76),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Image.asset(
            imgUrl,
            height: 32,
            width: 32,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

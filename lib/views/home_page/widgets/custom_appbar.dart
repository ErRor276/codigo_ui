import 'package:codigo_ui/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
    this.onTapBack,
    this.onTapCurrency,
    this.onTapChat,
  }) : super(key: key);

  final VoidCallback? onTapBack;
  final VoidCallback? onTapCurrency;
  final VoidCallback? onTapChat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.arrow_back,
              color: primaryColor,
              size: 24,
            ),
          ),
          const Expanded(child: SizedBox()),
          Image.asset(
            "assets/images/currency/currency@3x.png",
            height: 32,
            width: 32,
          ),
          const SizedBox(width: 16),
          Image.asset(
            "assets/images/chatactive/chatactive@3x.png",
            height: 32,
            width: 32,
          ),
        ],
      ),
    );
  }
}

import 'package:codigo_ui/constants/colors.dart';
import 'package:flutter/material.dart';

class ViewRatesButton extends StatelessWidget {
  const ViewRatesButton({Key? key, this.onTap}) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
            border: Border.all(
          color: primaryColor,
          width: 1.2,
        )),
        child: const Text(
          "View Rates",
          style: TextStyle(
            fontSize: 16,
            color: primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

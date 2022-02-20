import 'package:codigo_ui/constants/colors.dart';
import 'package:codigo_ui/constants/view_by.dart';
import 'package:flutter/material.dart';
import '_widgets.dart';

class ViewBySwitch extends StatelessWidget {
  const ViewBySwitch({
    Key? key,
    required this.viewBy,
    this.onTapRoom,
    this.onTapRates,
  }) : super(key: key);

  final ViewBy viewBy;
  final VoidCallback? onTapRoom;
  final VoidCallback? onTapRates;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: CustomPaint(
        painter: MyPainter(color: secondaryColor),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: SwitchTab(
                  text: "By Room",
                  filled: viewBy == ViewBy.room,
                  onTap: onTapRoom,
                ),
              ),
              Expanded(
                child: SwitchTab(
                  text: "By Rates",
                  filled: viewBy == ViewBy.rates,
                  onTap: onTapRates,
                  secondTab: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SwitchTab extends StatelessWidget {
  const SwitchTab({
    Key? key,
    required this.text,
    this.filled = false,
    this.secondTab = false,
    this.onTap,
  }) : super(key: key);

  final String text;
  final bool filled;
  final bool secondTab;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: filled
          ? CustomPaint(
              painter: MyPainter(
                color: secondaryColor,
                twoSlope: secondTab ? false : true,
                fill: true,
              ),
              child: Container(
                // color: secondaryColor,
                padding: const EdgeInsets.all(12),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          : Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
    );
  }
}

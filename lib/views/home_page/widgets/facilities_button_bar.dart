import 'package:flutter/material.dart';

import '_widgets.dart';

class FacilitiesButtonBar extends StatelessWidget {
  const FacilitiesButtonBar({
    Key? key,
    this.onTapAmen,
    this.onTapFaci,
    this.onTapFnb,
    this.onTapKids,
    this.onTapWell,
  }) : super(key: key);

  final VoidCallback? onTapAmen;
  final VoidCallback? onTapFaci;
  final VoidCallback? onTapFnb;
  final VoidCallback? onTapKids;
  final VoidCallback? onTapWell;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: onTapAmen,
            child: const IconWithLabel(
              imgUrl: "assets/images/theme/theme@3x.png",
              label: "Amenities",
            ),
          ),
          InkWell(
            onTap: onTapFaci,
            child: const IconWithLabel(
              imgUrl: "assets/images/workout/workout@3x.png",
              label: "Facilities",
            ),
          ),
          InkWell(
            onTap: onTapFnb,
            child: const IconWithLabel(
              imgUrl: "assets/images/fnb/fnb@3x.png",
              label: "F&B",
            ),
          ),
          InkWell(
            onTap: onTapKids,
            child: const IconWithLabel(
              imgUrl: "assets/images/kidsfamily/kidsfamily@3x.png",
              label: "Kids/family",
            ),
          ),
          InkWell(
            onTap: onTapWell,
            child: const IconWithLabel(
              imgUrl: "assets/images/wellness/wellness@3x.png",
              label: "Wellness",
            ),
          ),
        ],
      ),
    );
  }
}

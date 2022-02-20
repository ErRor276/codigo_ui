import 'package:codigo_ui/constants/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '_widgets.dart';

final vouchers = [
  {"title": "Mobile App Special Voucher", "member": true},
  {"title": "Weekend Staycation", "member": false},
];

class RatesView extends StatelessWidget {
  const RatesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: vouchers.length * 2 - 1,
        itemBuilder: (BuildContext context, int i) {
          if (i % 2 == 0) {
            return VoucherCard(voucher: vouchers[i ~/ 2]);
          }
          return const SizedBox(height: 20);
        },
      ),
    );
  }
}

class VoucherCard extends StatelessWidget {
  const VoucherCard({Key? key, required this.voucher}) : super(key: key);

  final Map<String, dynamic> voucher;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: secondaryColor,
      dashPattern: const [3, 2],
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          voucher['member']
                              ? const Text(
                                  "YOUR E-VOUCHER RATE",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              : const SizedBox(),
                          const SizedBox(height: 4),
                          Text(
                            voucher['title'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Image.asset(
                      "assets/images/nextred/nextred@3x.png",
                      height: 32,
                      width: 32,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const IconWithLabel(
                      imgUrl: "assets/images/fnb/fnb@3x.png",
                      label: "Inclusive of Breakfast",
                    ),
                    const Expanded(child: SizedBox()),
                    const IconWithLabel(
                      imgUrl: "assets/images/discount/discount@3x.png",
                      label: "20% off In-Room Service",
                    ),
                    const SizedBox(width: 16),
                    ViewRatesButton(onTap: () {}),
                  ],
                ),
                const SizedBox(height: 12),
                const Divider(color: Colors.black87, thickness: 1.2),
                const SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Avg. Nightly / Room From",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Subject to GST & Service charge",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    const Text(
                      "SGD",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      "161.42",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (voucher['member'])
            Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/pay/pay@3x.png",
                    height: 24,
                    width: 24,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "MEMBERS DEALS",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}

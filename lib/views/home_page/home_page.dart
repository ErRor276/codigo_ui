import 'package:codigo_ui/constants/view_by.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'widgets/_widgets.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewBy = useState(ViewBy.room);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppbar(),
              SlideShow(),
              const FacilitiesButtonBar(),
              ViewBySwitch(
                viewBy: viewBy.value,
                onTapRoom: () {
                  viewBy.value = ViewBy.room;
                },
                onTapRates: () {
                  viewBy.value = ViewBy.rates;
                },
              ),
              viewBy.value == ViewBy.room ? const RoomView() : RatesView(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:dash_board/utils/styles.dart';
import 'package:dash_board/widgets/my_card_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'dots_indicator.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  late final PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(
        () => currentIndex = pageController.page!.round(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: Styles.styleSemiBold20(context),
        ),
        const SizedBox(height: 20),
        MyCardPageView(pageController: pageController),
        const SizedBox(height: 19),
        DotsIndicator(currentIndex: currentIndex),
      ],
    );
  }
}

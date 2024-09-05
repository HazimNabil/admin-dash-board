import 'package:dash_board/widgets/my_card_item.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCardPageView extends StatelessWidget {
  final PageController pageController;

  const MyCardPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(right: 4),
          child: MyCardItem(),
        );
      },
    );
  }
}

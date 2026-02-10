import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCardsPageView2 extends StatefulWidget {
  const MyCardsPageView2({super.key});

  @override
  State<MyCardsPageView2> createState() => _MyCardsPageViewState();
}

class _MyCardsPageViewState extends State<MyCardsPageView2> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          children: List.generate(3, (index) => const MyCard()),
        ),
        const SizedBox(height: 16),
        SmoothPageIndicator(
          controller: _pageController,
          count: 3,
          effect: WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            spacing: 8,
            activeDotColor: Colors.blue,
            dotColor: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }
}

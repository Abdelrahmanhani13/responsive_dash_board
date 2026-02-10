import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/transaction_history.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: const [
          MyCardSection(),
          SizedBox(height: 24),
          TrasnctionHistory(),
        ],
      ),
    );
  }
}

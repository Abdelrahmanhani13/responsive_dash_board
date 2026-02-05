import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_headers.dart';
import 'package:responsive_dash_board/widgets/all_expenses_items.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          AllExpensesHeaders(),
          SizedBox(height: 20),
          AllExpensesItems(),
        ],
      ),
    );
  }
}

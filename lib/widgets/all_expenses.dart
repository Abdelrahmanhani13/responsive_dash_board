import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_headers.dart';
import 'package:responsive_dash_board/widgets/all_expenses_list_view_body.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          AllExpensesHeaders(),
          SizedBox(height: 28),
          AllExpensesListViewBody(),
        ],
      ),
    );
  }
}

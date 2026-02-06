import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_headers.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_list_view.dart';
import 'package:responsive_dash_board/widgets/custom_backgrond_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensessHeader(),
          SizedBox(height: 16),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}

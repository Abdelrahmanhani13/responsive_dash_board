import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_items_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/all_expenses_items_item.dart';

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AllExpensesItemsItem(
            AllExpensesItemsModel(
              image: Assets.imagesWalletAccount,
              title: 'Balance',
              date: 'April 2022',
              price: '\$20,129',
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: AllExpensesItemsItem(
            AllExpensesItemsModel(
              image: Assets.imagesIncome,
              title: 'Income',
              date: 'April 2022',
              price: '\$20,129',
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: AllExpensesItemsItem(
            AllExpensesItemsModel(
              image: Assets.imagesExpenses,
              title: 'Expenses',
              date: 'April 2022',
              price: '\$20,129',
            ),
          ),
        ),
      ],
    );
  }
}

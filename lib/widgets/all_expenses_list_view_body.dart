import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/all_expenses_body.dart';

class AllExpensesListViewBody extends StatelessWidget {
  const AllExpensesListViewBody({super.key});

  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesWalletAccount,
      title: 'Balance',
      subTitle: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      subTitle: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      subTitle: 'April 2022',
      price: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((entry) {
        int idx = entry.key;
        AllExpensesItemModel item = entry.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: idx != items.length - 1 ? 12 : 0),
            child: AllExpensesBody(allExpensesItemModel: item),
          ),
        );
      }).toList(),
    );
  }
}

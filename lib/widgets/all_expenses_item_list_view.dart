import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_items_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/all_expenses_items.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  int selectedIndex = 0;

  final List<AllExpensessItemModel> items = [
    AllExpensessItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$38,450',
    ),
    AllExpensessItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$52,300',
    ),
    AllExpensessItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$13,850',
    ),
  ];

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;

        return Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(index),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 8.0 : 0.0),
              child: AllExpensessItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

import 'package:responsive_dash_board/utils/app_assets.dart';

class AllExpensesItemsModel {
  final String title;
  final String image;
  final String date;
  final String price;

  AllExpensesItemsModel({
    required this.title,
    required this.image,
    required this.date,
    required this.price,
  });

  static final List<AllExpensesItemsModel> allExpensesItems = [
    AllExpensesItemsModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensesItemsModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensesItemsModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20,129',
    ),
  ];
}

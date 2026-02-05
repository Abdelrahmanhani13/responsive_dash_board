import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/all_expenses_items_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesItemsItem extends StatelessWidget {
  const AllExpensesItemsItem(this.allExpensesItemsModel, {super.key});

  final AllExpensesItemsModel allExpensesItemsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xffE8E8E8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: const Color(0xffFAFAFA),
                child: SvgPicture.asset(allExpensesItemsModel.image),
              ),
              const Spacer(),
              Transform.rotate(
                angle: -3.14 / 2,
                child: const Icon(Icons.arrow_back_ios_new_outlined),
              ),
            ],
          ),
          const SizedBox(height: 14),
          TextButton(
            onPressed: () {},
            child: Text(
              allExpensesItemsModel.title,
              style: AppStyles.styleSemiBold16,
            ),
          ),
          const SizedBox(height: 4),
          TextButton(
            onPressed: () {},
            child: Text(
              allExpensesItemsModel.date,
              style: AppStyles.styleRegular14.copyWith(
                color: const Color(0xffA1A1A1),
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () {},
            child: Text(
              allExpensesItemsModel.price,
              style: AppStyles.styleSemiBold24,
            ),
          ),
        ],
      ),
    );
  }
}

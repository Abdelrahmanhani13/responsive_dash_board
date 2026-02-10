import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesBody extends StatelessWidget {
  const AllExpensesBody({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: Color(0xffF1F1F1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(child: SvgPicture.asset(allExpensesItemModel.image)),
              Spacer(),
              Transform.rotate(
                angle: -1.57079633 * 2,
                child: Icon(Icons.arrow_back_ios, color: Color(0xff064061)),
              ),
            ],
          ),
          SizedBox(height: 34),
          Text(allExpensesItemModel.title, style: AppStyles.styleSemiBold16),
          SizedBox(height: 8),
          Text(allExpensesItemModel.subTitle, style: AppStyles.styleRegular14),
          SizedBox(height: 16),
          Text(allExpensesItemModel.price, style: AppStyles.styleSemiBold24),
        ],
      ),
    );
  }
}

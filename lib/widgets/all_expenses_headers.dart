import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesHeaders extends StatelessWidget {
  const AllExpensesHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Text('All Expenses', style: AppStyles.styleSemiBold20),
        ),
        Expanded(child: SizedBox()),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xffF1F1F1), width: 1),
          ),
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Mountly', style: AppStyles.styleMedium16),
              ),
              SizedBox(width: 8),
              Transform.rotate(
                angle: -1.57079633,
                child: Icon(Icons.arrow_back_ios_new_outlined),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

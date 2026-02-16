import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Income', style: AppStyles.styleSemiBold20(context)),
        Spacer(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xffF1F1F1)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text('Monthly', style: AppStyles.styleMedium16(context)),
              SizedBox(width: 20),
              Transform.rotate(
                angle: -1.57079633,
                child: Icon(Icons.arrow_back_ios, color: Color(0xff064061)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

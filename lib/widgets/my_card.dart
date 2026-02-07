import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(image: AssetImage(Assets.imagesMyCard)),
          color: Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          children: [
            Material(
              color: Colors.transparent,
              child: ListTile(
                title: Text(
                  'Card Name',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  'Syah Bandi',
                  style: AppStyles.styleMedium20.copyWith(color: Colors.white),
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '**** **** **** 1234',
                  style: AppStyles.styleSemiBold24.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),

              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Exp. Date 12/24',
                  style: AppStyles.styleRegular14.copyWith(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 54 - 28),
          ],
        ),
      ),
    );
  }
}

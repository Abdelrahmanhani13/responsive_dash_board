import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({
    super.key,
    required this.image,
    this.imageBackground,
    this.imageColor,
  });

  final String image;
  final Color? imageBackground;
  final Color? imageColor;

  @override
  Widget build(BuildContext context) {
    final isActive = imageColor != null;

    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: imageBackground ?? const Color(0xFFFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xFF4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2, // = -π radians = 180 degrees
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: isActive ? Colors.white : const Color(0xFF064061),
            size: 20,
          ),
        ),
      ],
    );
  }
}

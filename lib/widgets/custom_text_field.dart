import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppStyles.styleRegular16.copyWith(
            color: const Color(0xFFAAAAAA),
          ),
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18,
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(const Color(0xFF4DB7F2)),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? borderColor]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: borderColor ?? const Color(0xFFFAFAFA),
        width: 1.2,
      ),
    );
  }
}

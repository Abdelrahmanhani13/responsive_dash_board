import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/desktop_layout.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => SizedBox(),
      tabletLayout: (context) => SizedBox(),
      desktopLayout: (context) => DesktopLayout(),
    );
  }
}

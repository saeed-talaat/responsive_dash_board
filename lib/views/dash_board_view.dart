import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/adptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox() ,
        taplaytLayout: (context) => const  SizedBox() ,
        desktopLayout: (context) => const  DashBoardDesktopLayout(),
      ),
    );
  }
}


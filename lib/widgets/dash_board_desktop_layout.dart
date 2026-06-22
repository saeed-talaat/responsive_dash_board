import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/qiuck_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 16),
        Expanded(
          flex: 2,
          child: Column(  
            children: [
              AllExpensess(),
              SizedBox(height: 24,),
              QiuckInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_my_transction_history.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1,
          child: CustomDrawer()),
        SizedBox(width: 16),
        Expanded(flex: 2, child: AllExpensessAndQuickInvoiceSection()),
        SizedBox(width: 24),
        Expanded(child: Column(
          children: [
            SizedBox(height: 40,),
            MyCardAndMyTransctionHistory(),
            SizedBox(height: 24,),
            Expanded(child: IncomeSection())
          ],
        )),
      ],
    );
  }
}

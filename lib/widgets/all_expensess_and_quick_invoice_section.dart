import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess.dart';
import 'package:responsive_dash_board/widgets/qiuck_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(  
      children: [
        SizedBox(height: 20,),
        AllExpensess(),
        SizedBox(height: 12,),
        QiuckInvoice(),
      ],
    );
  }
}

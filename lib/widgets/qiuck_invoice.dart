import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_back_ground_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QiuckInvoice extends StatelessWidget {
  const QiuckInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(children: [QuickInvoiceHeader()]),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_back_ground_container.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QiuckInvoice extends StatelessWidget {
  const QiuckInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 12),
          LatestTransaction(),
          Divider(height: 24, color: Color(0xFFF1F1F1)),
          QuickInvoiceForm(),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  title: 'Add more details',
                  backGroundColor: Color(0xFFFAFAFA),
                  textColor: Color(0xFF4EB7F2),
                ),
              ),
              SizedBox(width: 24,),
              Expanded(child: CustomButton(title: 'Send Money')),
            ],
          ),
        ],
      ),
    );
  }
}

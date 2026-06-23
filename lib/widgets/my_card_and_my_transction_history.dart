import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_back_ground_container.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/transction_history.dart';

class MyCardAndMyTransctionHistory extends StatelessWidget {
  const MyCardAndMyTransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(child: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          color: Color(0xFFF1F1F1),
        ),
        TransctionHistory(),
      ],
    ));
  }
}
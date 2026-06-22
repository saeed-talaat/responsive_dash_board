import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_header.dart';
import 'package:responsive_dash_board/widgets/custom_back_ground_container.dart';
import 'package:responsive_dash_board/widgets/display_all_expensess_item.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(height: 8),
          DisplayAllExpensessItem(),
        ],
      ),
    );
  }
}


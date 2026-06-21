import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/widgets/all_expensess_active_item.dart';
import 'package:responsive_dash_board/widgets/all_expensess_not_active_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({
    super.key,
    required this.allExpensessItemModel,
    required this.isSelected,
  });
  final AllExpensessItemModel allExpensessItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? AllExpensessActiveItem(allExpensessItemModel: allExpensessItemModel)
        : AllExpensessNotActiveItem(
            allExpensessItemModel: allExpensessItemModel,
          );
  }
}

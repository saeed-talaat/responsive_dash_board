import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';

class DisplayAllExpensessItem extends StatefulWidget {
  const DisplayAllExpensessItem({super.key});

  @override
  State<DisplayAllExpensessItem> createState() =>
      _DisplayAllExpensessItemState();
}

class _DisplayAllExpensessItemState extends State<DisplayAllExpensessItem> {
  int selectedIndex = 0;
  final List<AllExpensessItemModel> items = const [
    AllExpensessItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),

    AllExpensessItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),

    AllExpensessItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: AllExpensessItem(
              allExpensessItemModel: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        SizedBox(width: 8,),
         Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: AllExpensessItem(
              allExpensessItemModel: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        SizedBox(width: 8,),
         Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: AllExpensessItem(
              allExpensessItemModel: items[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
        
      ],
    );
    
  }
}

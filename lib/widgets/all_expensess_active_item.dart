import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item_header.dart';

class AllExpensessActiveItem extends StatelessWidget {
  const   AllExpensessActiveItem({
    super.key,
    required this.allExpensessItemModel,
  });

  final AllExpensessItemModel allExpensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 8),
      decoration: ShapeDecoration(
        color: const Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           AllExpensessItemHeader(image: allExpensessItemModel.image, imageBackground: Colors.white.withValues(alpha: 0.10000000149011612), imageColor:Colors.white ,),
          const SizedBox(height: 17,),
          FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(allExpensessItemModel.title,style: AppStyles.styleSemiBold16(context).copyWith(color: Colors.white),)),
          const SizedBox(height: 4,),
          FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(allExpensessItemModel.date,style: AppStyles.styleRegular14(context).copyWith(color: Colors.white),)),
          const SizedBox(height: 8,),
           FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensessItemModel.price,style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),)),
        ],
      ),
    );
  }
}
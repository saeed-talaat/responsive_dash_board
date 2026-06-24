
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

 final List<ItemDetailsModel> items = const [
  ItemDetailsModel(color: Color(0xff208CC8), title: 'Design service', value: '40%'),
  ItemDetailsModel(color:Color(0xff4EB7F2) , title: 'Design product', value: '25%'),
  ItemDetailsModel(color: Color(0xff064061), title: 'Product royalti', value: '20%'),
  ItemDetailsModel(color:Color(0xffE2DECD) , title: 'Other', value: '22%')
 ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDetails(itemDetailsModel: e),).toList(),
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(
          context,
        ).copyWith(color: Color(0xFF064061)),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(
          context,
        ).copyWith(color: Color(0xFF208CC8)),
      ),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: OvalBorder(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({super.key});

  static const items = [
    UserInfoModel(title: 'Madrani Andi', subTitle: 'MadraniAndi15@gmail.com', image: Assets.imagesAvatar3),
    UserInfoModel(title: 'Josua Nunito', subTitle: 'JosuaNunito20@gmail.com', image: Assets.imagesAvatar2),
    UserInfoModel(title: 'Saeed Talaat', subTitle: 'SaeedTalaat30@gmail.com', image: Assets.imagesAvatar1),
    UserInfoModel(title: 'Mohamed Salah', subTitle: 'MohamedSalah86@gmail.com', image: Assets.imagesAvatar3),
    UserInfoModel(title: 'Ali goma', subTitle: 'Aligoma03@gmail.com', image: Assets.imagesAvatar2),
    UserInfoModel(title: 'Mohamed Ali', subTitle: 'MohamedAli99@gmail.com', image: Assets.imagesAvatar1),

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),).toList(),
      ),
    );
  }
}
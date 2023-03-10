import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        BigText(text: text,size: Dimensions.font26,),
    SizedBox(height: Dimensions.height10 ,),
    Row(
    children: [
    Wrap(
    children: List.generate(5, (index) => Icon(
    Icons.star,
    color: AppColors.mainColor,
    size:Dimensions.size15,
    )),
    ),
    SizedBox(width: 10,),
    SmallText(text: '4.5'),
    SizedBox(width: 10,),
    SmallText(text: '1204 '),
    SizedBox(width: 10,),
    SmallText(text: 'comments')
    ],
    ),
    SizedBox(height: Dimensions.height20,),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
    children: [
    IconAndTextWidget(
    icon: Icons.circle_sharp,
    text: 'Normal',
    iconColor: AppColors.iconColor1),
    SizedBox(width: 10,),
    IconAndTextWidget(
    icon: Icons.location_on,
    text: '1.7km',
    iconColor: AppColors.mainColor),
    SizedBox(width: 10,),
    IconAndTextWidget(
    icon: Icons.access_time,
    text: '31mins',
    iconColor: AppColors.iconColor2),
    ],
    )
   ],
    );
 }
  }

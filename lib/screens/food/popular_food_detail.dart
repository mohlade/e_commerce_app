 import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/app_column.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/expandable_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_text_widget.dart';
import '../../widgets/small_text.dart';

class  PopularFoodDetail  extends StatelessWidget {
   const  PopularFoodDetail ({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       body: Stack(
          children: [
            //background Image
            Positioned(
                left: 0,
                right: 0,
                child:Container(
                  width: double.maxFinite,
                  height: Dimensions.popularFoodImgSize,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/image/food0.png"
                      )
                    )
                  ),
                )
            ),
            //icon Widget
            Positioned(
                top: Dimensions.height45,
                left: Dimensions.width20,
                right:  Dimensions.width20,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                AppIcon(icon: Icons.arrow_back_ios_new_sharp),
                AppIcon(icon: Icons.shopping_cart_checkout_sharp)
              ],
            )
            ),
            //Introduction of food
            Positioned(
                left: 0,
                right: 0,
                bottom: 0 ,
                top:Dimensions.popularFoodImgSize-29,
                child:
                Container(
                  padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                       topRight:Radius.circular(Dimensions.radius20),
                        topLeft:Radius.circular(Dimensions.radius20)
                    ),
                    color: Colors.white
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppColumn(
                        text: 'Chinese Side',
                      ),
                      SizedBox(height: Dimensions.height20,),
                      BigText(text: 'Introduce'),
                      SizedBox(height: Dimensions.height20,),
                      Expanded(
                          child: SingleChildScrollView(
                              child: ExpandableTextWidget(text: 'Dim sum (点心 diǎnxin) is one of the most popular Cantonese cuisine dishes. It contains a large range of small dishes, including dumplings, rolls, cakes, and meat, seafood, dessert, and vegetable preparations.There are more than one thousand dim sum dishes in existence today Dim sum originated in Guangzhou city. People of Guangdong are fond of drinking tea in the morning or lunch. So, they often eat dim sum during their tea parties for breakfast and lunch. It is a popular way to get together with friends and relatives or have social gatherings'))),
                    ],
                  )
                ))
            //expandable text widget
          ],
       ),
       bottomNavigationBar: Container(
          height: Dimensions.bottomHeightBar,
          padding: EdgeInsets.only(
             top: Dimensions.height30,
             bottom: Dimensions.height30,
             right: Dimensions.width20,
             left: Dimensions.width20
         ),
         decoration: BoxDecoration(
           color: AppColors.buttonBackgroundColor,
               borderRadius: BorderRadius.only(
             topLeft: Radius.circular(Dimensions.radius20*2),
             topRight: Radius.circular(Dimensions.radius20*2),
           )
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Container(
               padding: EdgeInsets.only(
                   top:Dimensions.height20,
                   bottom: Dimensions.height20,
                   left: Dimensions.width20,
                   right: Dimensions.width20
               ),
               decoration: BoxDecoration(
                 borderRadius:BorderRadius.circular(Dimensions.radius20),
                 color: Colors.white 
               ),
               child: Row(
                  children: [
                     Icon(Icons.remove,color: AppColors.signColor,),
                    SizedBox(width: Dimensions.width10/2,),
                    BigText(text: '0'),
                    SizedBox(width: Dimensions.width10/2,),
                    Icon(Icons.add, color: AppColors.signColor,)
                  ],
               ),
             ),
             Container(
               padding: EdgeInsets.only(
                   top:Dimensions.height20,
                   bottom: Dimensions.height20,
                   left: Dimensions.width20,
                   right: Dimensions.width20
               ),
               child: BigText(text: '\$10 | Add to cart',color: Colors.white,),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(Dimensions.radius20),
                 color: AppColors.mainColor
               ),
             )

           ],
         ),
       ),
     );
   }
 }
 
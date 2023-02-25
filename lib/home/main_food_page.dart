import 'package:e_commerce_app/home/food_page_body.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/colors.dart';

import '../utils/dimensions.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container (
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45 ,bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: 'Nigeria',
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(text:'Lagos',
                            color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),

                    ],
                  ),
                  Center(
                    child: Container(
                      child: Icon(Icons.search,color: Colors.white,size: Dimensions.icon24 ,),
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.width20),
                          color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //showing the bottom
          FoodPageBody(),
        ],
      ),
    );
  }
}

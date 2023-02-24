import 'package:e_commerce_app/home/food_page_body.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/colors.dart';

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
          Container (
            child: Container(
              margin: EdgeInsets.only(top: 45.0,bottom: 15.0),
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
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
                      child: Icon(Icons.search,color: Colors.white,),
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}

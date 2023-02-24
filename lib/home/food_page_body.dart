import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/icon_text_widget.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class  FoodPageBody extends StatefulWidget {
  const  FoodPageBody({Key? key}) : super(key: key);

  @override
  State< FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State< FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount:  5,
          itemBuilder: (context, position){
        return _buildPageItem(position);
      }),
    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
          height: 220.0,
          margin: EdgeInsets.only(left:10,right:10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
            image:  DecorationImage(
              fit: BoxFit.cover,
              image:  AssetImage(
                  "assets/image/food0.png"
              ),
            ),
          ),
        ),
        Align(
          alignment:  Alignment.bottomCenter ,
          child: Container(
            height: 120.0,
            margin: EdgeInsets.only(left:25,right:25,bottom: 30 ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 15 , left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: 'Chinese Slide'),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) => Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size:15 ,
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
                    SizedBox(height: 20,),
                    Row(
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
                            text: '32mins',
                            iconColor: AppColors.iconColor2),
                      ],
                    ),

                  ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

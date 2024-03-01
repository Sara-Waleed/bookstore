import 'package:flutter/material.dart';

import '../../../../core/shared_Widgets/custom_button.dart';
import '../../../../core/utils/styles.dart';
import 'BestSeller_Rate.dart';
import 'Custom_List_view_item.dart';
class BoxDetailsSection extends StatelessWidget {
  const BoxDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=  MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal:width*.2),
          child: AspectRaio_Image_Widget(NetImage: ""),
        ),
        SizedBox(height: 43,),
        Text("The girl Anime",style: Styles.textStyle30),
        SizedBox(height: 6,),
        Text("Anime girl",style: Styles.textStyle18.copyWith(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
        ),),
        SizedBox(height: 10,),
        BestSeller_Rate(rating: 4.9,count: 1500,),
        SizedBox(height: 30,),
        Center(
          child: CustomButton(),
        ),
      ],
    ) ;
  }
}
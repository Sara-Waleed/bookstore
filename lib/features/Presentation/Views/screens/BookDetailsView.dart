import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/shared_Widgets/custom_button.dart';
import '../Shared_Widgets/BestSeller_Rate.dart';
import '../Shared_Widgets/BookDetailsAppBar.dart';
import '../Shared_Widgets/Custom_List_view_item.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=  MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           BookDetailsAppBar(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:width*.2),
              child: AspectRaio_Image_Widget(),
            ),
            SizedBox(height: 43,),
            Text("The girl Anime",style: Styles.textStyle30),
            SizedBox(height: 6,),
            Text("Anime girl",style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),),
            Center(child: BestSeller_Rate(rating: 4.9,count: 1500,)),
       SizedBox(height: 10,),
       Center(
         child: Row(
           children: [
             CustomButton(),
             CustomButton(),
           ],
         ),
       ),
          ],
        ),

      ),
    );
  }
}




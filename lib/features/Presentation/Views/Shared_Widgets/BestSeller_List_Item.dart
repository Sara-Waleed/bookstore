import 'package:flutter/material.dart';

import '../../../../contests/contests.dart';
import '../../../../core/utils/styles.dart';
import 'BestSeller_Rate.dart';

class BestSeller_List_Item extends StatelessWidget {
  const BestSeller_List_Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5/4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image: DecorationImage(
                      fit:BoxFit.fill,
                      image: AssetImage("assets/Wt5pDPR1.jpeg")),
                ),

                height:MediaQuery.of(context).size.height * .25 ,


              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width:MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        maxLines:2,
                        overflow: TextOverflow.ellipsis,

                        "Hery PotterHery Potter Hery PotterHery Potter Hery Potter ",style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine,),)),
                  SizedBox(height: 3,),
                  Text("J.K Rowling",style: Styles.textStyle14,),
                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("19.99\$",style: Styles.textStyle20.copyWith(
                          fontFamily: kGtSectraFine,
                          fontWeight: FontWeight.bold
                      ),),
                      BestSeller_Rate(),
                    ],
                  ),
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}

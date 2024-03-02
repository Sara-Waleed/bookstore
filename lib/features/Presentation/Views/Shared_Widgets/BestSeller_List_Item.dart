import 'package:bookstore/features/Data/models/bookmodel.dart';
import 'package:bookstore/features/Presentation/Views/screens/BookDetailsView.dart';
import 'package:flutter/material.dart';

import '../../../../contests/contests.dart';
import '../../../../core/utils/styles.dart';
import 'BestSeller_Rate.dart';
import 'Custom_List_view_item.dart';

class BestSeller_List_Item extends StatelessWidget {
  const BestSeller_List_Item({
    super.key,
    required this.bookmodel,

  });
 final BookModel bookmodel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetailsView(),));

      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 120,
          child: Row(
            children: [
              Custom_List_view_item(imageUrl:bookmodel.volumeInfo.imageLinks
                  ?.thumbnail ??
                  'https://i.pinimg.com/564x/42/11/6e/42116efc40c443b1c81d65de095e7b4e.jpg',),
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

                          "${bookmodel.volumeInfo.title}",style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine,),)),
                    SizedBox(height: 3,),
                    Text("${bookmodel.volumeInfo.authors![0]}",style: Styles.textStyle14,),
                    SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("free\$",style: Styles.textStyle20.copyWith(
                            fontFamily: kGtSectraFine,
                            fontWeight: FontWeight.bold
                        ),),
                        BestSeller_Rate(rating:bookmodel.volumeInfo.averageRating?? 0,count:bookmodel.volumeInfo.ratingsCount?? 0),
                      ],
                    ),
                  ],
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}

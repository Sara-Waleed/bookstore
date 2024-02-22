import 'package:flutter/material.dart';




class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return     Padding(

      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),

      child:   Row(



        mainAxisAlignment: MainAxisAlignment.spaceBetween,



        children: [



          Icon(Icons.close),



          Icon(Icons.shopping_cart),







        ],



      ),

    );
  }
}

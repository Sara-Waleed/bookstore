import 'package:flutter/material.dart';

import '../Shared_Widgets/BookDetailsAppBar.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=  MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
           BookDetailsAppBar(),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal:width*.17),
              child: AspectRatio(
                aspectRatio: 2.7 /4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                   // color: Colors.red,
                    image: DecorationImage(
                        fit:BoxFit.fill,
                        image: AssetImage("assets/Wt5pDPR1.jpeg")),
                  ),

                  height:MediaQuery.of(context).size.height * .25 ,


                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}


import 'package:flutter/material.dart';

class Custom_List_view_item extends StatelessWidget {
  const Custom_List_view_item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: DecorationImage(
              fit:BoxFit.fill,
              image: AssetImage("assets/Wt5pDPR1.jpeg")),
        ),

        height:MediaQuery.of(context).size.height * .25 ,


      ),
    );
  }
}
class AspectRaio_Image_Widget extends StatelessWidget {
  const AspectRaio_Image_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
    );
  }
}
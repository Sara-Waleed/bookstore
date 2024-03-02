import 'Custom_List_view_item.dart';
import 'package:flutter/material.dart';



class Simialar_List_View extends StatelessWidget {
  const Simialar_List_View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index) => Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Custom_List_view_item(imageUrl:""),
        ),
        itemCount: 10,
      ),
    );
  }
}




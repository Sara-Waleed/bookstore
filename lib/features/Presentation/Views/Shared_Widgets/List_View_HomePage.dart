import 'package:flutter/material.dart';

import 'Custom_List_view_item.dart';

class List_View_HomePage extends StatelessWidget {
  const List_View_HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index) => Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Custom_List_view_item(),
        ),
        itemCount: 10,
      ),
    );
  }
}
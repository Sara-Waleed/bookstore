import 'package:flutter/material.dart';
import 'BestSeller_List_Item.dart';



class BestSeller_ListView extends StatelessWidget {
  const BestSeller_ListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8),
      child: ListView.builder(
         shrinkWrap: true,// with sliverToAdapter not With SliverFillRemaining
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => BestSeller_List_Item(),
        itemCount: 10,
      ),
    );
  }
}

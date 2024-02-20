import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class BestSeller_Rate extends StatelessWidget {
  const BestSeller_Rate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(width:5),
        Text("4.8",style: Styles.textStyle16,),
        SizedBox(width:5),
        Text("245",style: Styles.textStyle14.copyWith(color: Colors.grey),)
      ],
    );
  }
}


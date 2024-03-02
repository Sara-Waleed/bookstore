import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';


  class BestSeller_Rate extends StatelessWidget {
  const BestSeller_Rate({
  super.key,
  this.mainAxisAlignment = MainAxisAlignment.start,
  required this.rating,
  required this.count,
  });

  final MainAxisAlignment mainAxisAlignment;
  final num  rating;
  final int count;
  @override
  Widget build(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,

  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  const Icon(
    Icons.star,
  size: 14,
  color: Color(0xffFFDD4F),
  ),
  const SizedBox(
  width: 6.3,
  ),
  Text(
  rating.toString(),
  style: Styles.textStyle16,
  ),
  const SizedBox(
  width: 5,
  ),
  Opacity(
  opacity: .5,
  child: Text(
  '($count)',
  style: Styles.textStyle14.copyWith(
  fontWeight: FontWeight.w600,
  ),
  ),
  )
  ],
  );
  }
  }



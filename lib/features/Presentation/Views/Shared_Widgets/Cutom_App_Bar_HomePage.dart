import 'package:flutter/material.dart';

class Cutom_App_Bar_HomePage extends StatelessWidget {
  const Cutom_App_Bar_HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/Logo.png",height: 16,),
          IconButton(onPressed: (){},
              icon: Icon(Icons.search)),

        ],),
    );
  }
}
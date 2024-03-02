import 'package:flutter/material.dart';

import '../screens/SearchPage.dart';

class Cutom_App_Bar_HomePage extends StatelessWidget {
  const Cutom_App_Bar_HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10,left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/Logo.png",height: 20,),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(),));
          },
              icon: Icon(Icons.search)),

        ],),
    );
  }
}
import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../Shared_Widgets/BestSeller_ListView.dart';
import '../Shared_Widgets/Cutom_App_Bar_HomePage.dart';
import '../Shared_Widgets/List_View_HomePage.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
           child: Padding(
             padding: const EdgeInsets.only(left: 8.0,right: 8),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(height: 50,),
                 Cutom_App_Bar_HomePage(),
                 List_View_HomePage(),
                 SizedBox(height: 30,),
                 Padding(
                   padding: const EdgeInsets.only( left: 5.0),
                   child: Text("Best Seller",style: Styles.textStyle18,),
                 ),
               ]
             ),
           ),
          ),
          SliverToBoxAdapter(
            child: BestSeller_ListView(),
          ),
        ],
      )




    );
  }
}









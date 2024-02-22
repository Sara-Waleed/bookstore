import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../Shared_Widgets/BookDetailsAppBar.dart';
import '../Shared_Widgets/BoxDetailsSection.dart';
import '../Shared_Widgets/Simialar_List_View.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BookDetailsAppBar(),
                  BoxDetailsSection(),
                  Expanded(child: SizedBox(height: 50,)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text("You can also like ",style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),),
                      )),
                  SizedBox(height: 15,),
                  Simialar_List_View(),
                ],
              ),),
            ],

          ),
        ),

      ),
    );
  }
}



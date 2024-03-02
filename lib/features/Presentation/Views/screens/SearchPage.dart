import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../Shared_Widgets/CustomSearchTextField.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15,vertical:50 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchTextField(),
            SizedBox(height: 20,),
            Text("Search Result",style: Styles.textStyle18,),
            SizedBox(height: 10,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: ListView.builder(
                  shrinkWrap: true,// with sliverToAdapter not With SliverFillRemaining
                  itemBuilder: (context, index) => Text(""),
                      //BestSeller_List_Item(bookmodel: ),
                  itemCount: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



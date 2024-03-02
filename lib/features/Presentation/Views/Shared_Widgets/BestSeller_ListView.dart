import 'package:bookstore/features/Data/cubits/BestSeller_Books_Cubit/best_seller_books_cubit.dart';
import 'package:bookstore/features/Presentation/Views/Shared_Widgets/List_View_HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'BestSeller_List_Item.dart';



class BestSeller_ListView extends StatelessWidget {
  const BestSeller_ListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit,BestSellerBooksState>(
      builder: (context, state) {
        if(state is BestSellerBooksSuccess){
          return  Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8),
            child: ListView.builder(
              shrinkWrap: true,// with sliverToAdapter not With SliverFillRemaining
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => BestSeller_List_Item(
                bookmodel: state.books[index],
              ),
              itemCount: 10,
            ),
          );
        }
        else if(state is BestSellerBooksFailure){
          return CustomErrorMessage(textMessage: state.errmeg);
        }
        else {
          return const  Center(child: CircularProgressIndicator());
        }
      },

    );
  }
}

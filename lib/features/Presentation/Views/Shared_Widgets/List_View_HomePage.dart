import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/Data/cubits/featured_books_cubit/featured_books_states_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Custom_List_view_item.dart';

class List_View_HomePage extends StatelessWidget {
  const List_View_HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksStatesCubit,FeaturedBooksStatesState>(
  builder: (context, state){
    if(state is FeaturedBooksStatesSuccess){
       return SizedBox(
         height: MediaQuery.of(context).size.height*.3,
         child: ListView.builder(
           physics: BouncingScrollPhysics(),
           scrollDirection: Axis.horizontal,
           itemCount: state.books.length,
           itemBuilder:(context, index) => Padding(
             padding: const EdgeInsets.only(right: 5.0),
             child: Custom_List_view_item(
               imageUrl:  state.books[index].volumeInfo.imageLinks
                     ?.thumbnail ??
                     '',),
           ),

         ),
       );
    }
    else if (state is FeaturedBooksStatesFailure){
      return CustomErrorMessage(textMessage: state.ErroMess,);
    }
else{
  return const Center(child: CircularProgressIndicator());
    }
  },

    );
  }
}

class CustomErrorMessage extends StatelessWidget {
  final textMessage;
  const CustomErrorMessage({
    super.key,
    required  this.textMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$textMessage",
      style: Styles.textStyle18,
    );
  }
}
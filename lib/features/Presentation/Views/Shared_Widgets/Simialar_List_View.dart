import 'package:bookstore/features/Presentation/Views/Shared_Widgets/List_View_HomePage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Data/cubits/fetchSimilarBooks/fetch_similar_books_cubit.dart';
import 'Custom_List_view_item.dart';
import 'package:flutter/material.dart';



class Simialar_List_View extends StatelessWidget {
  const Simialar_List_View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      builder: (context, state) {
        if(state is FetchSimilarBooksStateSuccess){
          return  SizedBox(
            height: MediaQuery.of(context).size.height*.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder:(context, index) => Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Custom_List_view_item(imageUrl:""),
              ),
              itemCount: state.books.length,
            ),
          );
        }
        else if(state is FetchSimilarBooksStateFailure ){
          return CustomErrorMessage(textMessage: state.ErroMess);
        }
        else{
          return Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}




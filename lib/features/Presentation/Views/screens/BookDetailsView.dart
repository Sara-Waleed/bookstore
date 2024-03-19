import 'package:bookstore/core/utils/service_locatoer.dart';
import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/Data/models/bookmodel.dart';
import 'package:bookstore/core/Domain/Repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Data/cubits/fetchSimilarBooks/fetch_similar_books_cubit.dart';
import '../Shared_Widgets/BookDetailsAppBar.dart';
import '../Shared_Widgets/BoxDetailsSection.dart';
import '../Shared_Widgets/Simialar_List_View.dart';

class BookDetailsView extends StatefulWidget {
   BookDetailsView({Key? key,required this.bookmodel}) : super(key: key);
   final BookModel bookmodel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
BlocProvider.of<FetchSimilarBooksCubit>(context).fetchFeatureBooks(category: widget.bookmodel.volumeInfo.categories![0]);
super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context)=>FetchSimilarBooksCubit(
          getit.get<HomeRepo>(),
        ),
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
                    //  BookDetailsSection(book: bookmodel),
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
      ),
    );
  }
}



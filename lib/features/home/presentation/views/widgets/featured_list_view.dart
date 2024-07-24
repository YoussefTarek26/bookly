import 'package:bookly_app/features/book_details/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/manager/all_books/newst_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/all_books/newst_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return
      BlocBuilder<NewstBooksCubit,NewstBooksState>(builder:(context,state){
      if(state is NewstBooksSuccess){
        return
          SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index){
                return  InkWell(
                  onTap: (){
                    // GoRouter.of(context).push(AppRouter.kBookDetailsView);
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>  BookDetailsView(index: index, access: true,)));
                  },
                    child: CustomBooKImage(image: "${state.books[index].volumeInfo!.imageLinks!.thumbnail}"));

              }),
        );
      }
      else if (state is NewstBooksFailures){
        return Text(state.error);
      }
      else{
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}

//   SizedBox(
//   height: 224,
//   child: ListView.builder(
//     padding: const EdgeInsets.symmetric(horizontal: 20),
//     itemCount: 5,
//     scrollDirection: Axis.horizontal,
//     itemBuilder: (context,index){
//     return const CustomBooKImage();
//   },),
// );

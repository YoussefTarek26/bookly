import 'package:bookly_app/core/utils/stayles.dart';
import 'package:bookly_app/features/book_details/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/manager/best_books/best_seller_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/best_books/best_seller_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerItem extends StatelessWidget {
  final int index;
  const BestSellerItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<BestSellerCubit,BestSellerState>(builder:(context,state){
      if(state is BestSellerSuccess){
        return InkWell(
          onTap: (){
            // GoRouter.of(context).push(AppRouter.kBookDetailsView);
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=>  BookDetailsView(index: index, access: true,)));

          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
            child: Row(
              children: [
                 SizedBox(
                     height: 105,
                     child: CustomBooKImage(
                         image: "${state.books[index].volumeInfo!.imageLinks!.smallThumbnail}")),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child:  Text(
                        "${state.books[index].volumeInfo!.title}",
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                     Text(
                      state.books[index].volumeInfo!.authors![0],
                      style: Styles.starStyle14,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("19.99 €",style: Styles.priceStyle20,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Text("4.8 ",style: Styles.starStyle16,),
                              Text(" (2390)",style: Styles.starStyle14,),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }
      else if (state is BestSellerFailures){
        return Text(state.error);
      }
      else{
        return const Center(child: CircularProgressIndicator());
      }
    });



    }
  }


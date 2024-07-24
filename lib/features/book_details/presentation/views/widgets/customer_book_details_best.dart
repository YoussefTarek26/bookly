import 'package:bookly_app/core/utils/stayles.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/price_preview.dart';
import 'package:bookly_app/features/home/presentation/manager/best_books/best_seller_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/best_books/best_seller_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerBookDetailsBest extends StatelessWidget {
  final int index;
  const CustomerBookDetailsBest({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return BlocBuilder<BestSellerCubit,BestSellerState>(builder:(context,state){
      if(state is BestSellerSuccess){
        return
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * .26,
                ),
                child:  CustomBooKImage(image: "${state.books[index].volumeInfo!.imageLinks!.smallThumbnail}"),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "${state.books[index].volumeInfo!.title}",
                  style: Styles.starStyle30,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,),
              ),
              const SizedBox(height: 8,),
              Text(
                state.books[index].volumeInfo!.authors![0],
                style: Styles.textStyle18,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Text(" 4.8 ",style: Styles.starStyle16,),
                  Text(" (2390)",style: Styles.starStyle14,),
                ],
              ),
              const SizedBox(height: 20,),
              const PricePreview(),
            ],
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

import 'package:bookly_app/core/utils/stayles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_booK_image.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
      child: Row(
        children: [
          const SizedBox(height: 105,child: CustomBooKImage()),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: const Text(
                  "Harry Potter and the Goblet of Fire",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Text(
                "J.K. Rowling",
                style: Styles.starStyle14,
              ),
              const SizedBox(height: 2,),
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
    );
  }
}

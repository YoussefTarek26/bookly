import 'package:bookly_app/core/utils/stayles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CAppBar(),
            FeaturedListView(),
            Padding(
              padding: EdgeInsets.only(left: 20 ,top: 70,bottom: 20),
              child: Text("Best Seller",style: Styles.textStyle18,),
            ),
          ],
        ),),
        BestSellerList(),
      ],
    );
  }
}

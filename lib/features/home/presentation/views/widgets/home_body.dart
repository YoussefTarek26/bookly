import 'package:bookly_app/core/barrel/imports.dart';

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

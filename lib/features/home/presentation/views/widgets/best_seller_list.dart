import 'package:bookly_app/core/barrel/imports.dart';

class BestSellerList extends StatelessWidget {

  const BestSellerList({super.key,});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<BestSellerCubit,BestSellerState>(builder:(context,state){
      if(state is BestSellerSuccess){
        return
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return InkWell(
              onTap: (){
                final extraData = {'index': index, 'access': true};
                GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: extraData);
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
          },childCount: 10));

      }
      else if (state is BestSellerFailures){
        return SliverToBoxAdapter(
          child:Center(child:Text(state.error) ) ,
        );
      }
      else{
        return const SliverToBoxAdapter(
          child:Center(child: CircularProgressIndicator()) ,
        );

      }
    });



  }
}


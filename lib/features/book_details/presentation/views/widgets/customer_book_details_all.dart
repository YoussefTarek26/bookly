import 'package:bookly_app/core/barrel/imports.dart';

class CustomerBookDetailsAll extends StatelessWidget {
  final int index;
  const CustomerBookDetailsAll({super.key, required this.index});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;

    return
      BlocBuilder<NewstBooksCubit,NewstBooksState>(builder:(context,state){
      if(state is NewstBooksSuccess){
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

      else if (state is NewstBooksFailures){
        return Text(state.error);
      }
      else{
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}

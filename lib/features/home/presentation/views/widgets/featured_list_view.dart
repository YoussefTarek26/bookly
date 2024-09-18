import 'package:bookly_app/core/barrel/imports.dart';

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
                    final extraData = {'index': index, 'access': true};
                    GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: extraData);
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

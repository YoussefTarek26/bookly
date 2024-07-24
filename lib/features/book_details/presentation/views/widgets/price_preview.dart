import 'package:bookly_app/core/utils/stayles.dart';
import 'package:flutter/material.dart';

class PricePreview extends StatelessWidget {
  const PricePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 48,
          width: 150,
          child: TextButton(onPressed: (){},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffFFFFFF),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                )
              ),
              child: Text("19.99 €",style:Styles.priceStyle20.copyWith(
                color: Colors.black,
              ))),
        ),
        SizedBox(
          height: 48,
          width: 150,
          child: TextButton(onPressed: (){},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffEF8262),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                )
              ),
              child: const Text("Free preview",style:Styles.starStyle16)),
        ),
      ],
    );
  }
}

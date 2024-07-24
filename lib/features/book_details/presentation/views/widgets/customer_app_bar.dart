import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomerAppBar extends StatelessWidget {
  const CustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 8, right: 30,left: 30),
      child: Row(
        children: [
        InkWell(
            onTap: (){
              GoRouter.of(context).push(AppRouter.kHomeView);
            },
            child: Image.asset(AssetsData.logo,height: 17,width: 75,)),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 24,
              weight: 24,
            ),
          )
        ],
      ),
    );
  }
}


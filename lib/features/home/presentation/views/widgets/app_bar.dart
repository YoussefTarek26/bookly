import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/feature/sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CAppBar extends StatefulWidget {
  const CAppBar({super.key});

  @override
  State<CAppBar> createState() => _CAppBarState();
}

class _CAppBarState extends State<CAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    SlidingAnimation(
        vs: this,
        setController: (Controller){
          animationController = Controller;
        },
        setAnimation: (Animation){
          slidingAnimation = Animation;
        },
        beginOF: const Offset(-1, 2), endOF: Offset.zero);
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,left: 30,right: 30,bottom:40 ),
      child: Row(
        children: [
          SlideTransition(
              position: slidingAnimation,
              child: Image.asset(AssetsData.logo,height: 17,width: 75,)),
          const Spacer(),
          const Icon(FontAwesome.magnifying_glass_solid ,weight: 25,size: 25,)
        ],
      ),
    );
  }
}

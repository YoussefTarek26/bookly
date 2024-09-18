import 'package:bookly_app/core/barrel/imports.dart';

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
      padding: const EdgeInsets.only(top: 20,left: 30,right: 30,bottom:25 ),
      child: Row(
        children: [
          SlideTransition(
              position: slidingAnimation,
              child: Image.asset(AssetsData.logo,height: 17,width: 75,)),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesome.magnifying_glass_solid,
              size: 24,
              weight: 24,
            ),
          )
          // const Icon(FontAwesome.magnifying_glass_solid ,weight: 25,size: 25,)
        ],
      ),
    );
  }
}

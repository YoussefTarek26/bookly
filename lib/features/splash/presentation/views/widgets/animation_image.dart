import 'package:bookly_app/core/barrel/imports.dart';

class AnimationImage extends StatefulWidget {
  const AnimationImage({super.key});

  @override
  State<AnimationImage> createState() => _AnimationImageState();
}

class _AnimationImageState extends State<AnimationImage>
    with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    SlidingAnimation(
        vs: this,
        setController: (Controller) {
          animationController = Controller;
        },
        setAnimation: (Animation) {
          slidingAnimation = Animation;
        },
        beginOF: const Offset(2, -2), endOF: Offset.zero);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slidingAnimation,
      child:
      Image.asset(AssetsData.logo),
    );
  }
}


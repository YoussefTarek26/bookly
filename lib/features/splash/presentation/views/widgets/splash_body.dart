import 'package:bookly_app/core/barrel/imports.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
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
        beginOF: const Offset(-2, 2), endOF: Offset.zero);
    Future.delayed(const Duration(seconds: 5),(){
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const AnimationImage(),
        
        SlideTransition(
            position: slidingAnimation,
            child:const Text(
              "Read Free Books",
              textAlign: TextAlign.center,
            ),
            ),
      ],
    );
  }
}

import 'package:bookly/Features/splash/presentation/views/widgets/slidingtext.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashBodyView extends StatefulWidget {
  const SplashBodyView({super.key});

  @override
  State<SplashBodyView> createState() => _SplashBodyViewState();
}

class _SplashBodyViewState extends State<SplashBodyView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  void initState() {
    super.initState();
    initSlidinganimations();
    NavigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 3,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.Logo),
        SlidingText(
          slidingAnimation: slidinganimation,
        )
      ],
    );
  }

  void initSlidinganimations() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    slidinganimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void NavigateToHome() {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.KhomeView);
    });
  }
}

part of 'splash_imports.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    moveToOnboard();
    super.initState();
  }

  moveToOnboard() async {
    await Future.delayed(const Duration(seconds: 3)).then((value) {
      AutoRouter.of(context).push(const OnboardRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: FadedScaleAnimation(
        child: Center(
          child: Image.asset(
            'assets/images/app_logo.png',
            height: 42,
            width: 140,
          ),
        ),
      ),
    );
  }
}

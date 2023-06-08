part of 'onboard_imports.dart';

@RoutePage()
class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final OnBoardViewModel onBoardViewModel = OnBoardViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/app_logo.png',
                  height: 42,
                  width: 140,
                  color: MyColors.primaryColor,
                ),
                60.heightBox,
                PageView(
                  controller: onBoardViewModel.pageController,
                  children: const [
                    OnboardFirst(),
                    OnboardSecond(),
                    OnboardThird(),
                  ],
                ).expand(),
                60.heightBox,
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.primaryColor,
                    minimumSize: Size(MediaQuery.of(context).size.width, 44),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  child: 'Get Started'
                      .text
                      .size(17)
                      .fontWeight(FontWeight.w700)
                      .color(Colors.white)
                      .make(),
                ),
                60.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Skip'.text.size(16).fontWeight(FontWeight.w500).make(),
                    SmoothPageIndicator(
                      controller: onBoardViewModel.pageController,
                      count: 3,
                      effect: const WormEffect(
                        dotHeight: 12,
                        dotWidth: 12,
                        activeDotColor: MyColors.primaryColor,
                      ),
                    ),
                    'Next'.text.size(16).fontWeight(FontWeight.w500).make(),
                  ],
                ),
                12.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

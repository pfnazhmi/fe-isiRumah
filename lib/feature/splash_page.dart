import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isirumah/core/app_asset.dart';
import 'package:isirumah/feature/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const OnboardingPage(),
          ),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF6F6F6),
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              double imageWidth = constraints.maxWidth * 0.6;
              double imageHeight = imageWidth * (140 / 298);

              return Image.asset(
                AppAsset.logo,
                height: imageHeight,
                width: imageWidth,
              );
            },
          ),
        ),
      ),
    );
  }
}

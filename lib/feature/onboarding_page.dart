import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isirumah/core/app_asset.dart';
import 'package:isirumah/feature/signin_page.dart';
import 'package:isirumah/widget/button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppAsset.background,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black, Colors.transparent],
              ),
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                  constraints.maxWidth * 0.05,
                  0,
                  constraints.maxWidth * 0.05,
                  constraints.maxHeight * 0.1,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Great Life\nStart Here",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: constraints.maxWidth *
                            0.07, // Sesuaikan ukuran font
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Lebih dari isi rumah",
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: constraints.maxWidth * 0.05,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Button(
                      label: "Mulai sekarang",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SigninPage()),
                        );
                      },
                      isExpand: true,
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

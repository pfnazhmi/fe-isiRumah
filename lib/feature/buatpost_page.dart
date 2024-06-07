import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isirumah/core/app_color.dart';

class BuatpostPage extends StatefulWidget {
  const BuatpostPage({super.key});

  @override
  State<BuatpostPage> createState() => _BuatpostPageState();
}

class _BuatpostPageState extends State<BuatpostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgScreen,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Post Baru",
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w900,
            color: AppColor.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Text(
              "Judul",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: AppColor.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}

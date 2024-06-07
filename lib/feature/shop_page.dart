import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isirumah/core/app_asset.dart';
import 'package:isirumah/core/app_color.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.bgScreen,
        appBar: AppBar(
          backgroundColor: AppColor.bgScreen,
          automaticallyImplyLeading: false,
          title: Text(
            "Shop",
            style: GoogleFonts.plusJakartaSans(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: AppColor.black,
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: TextField(
                  onTap: () {},
                  decoration: InputDecoration(
                    hintText: 'Cari apa nih?',
                    hintStyle: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xFF1A1A1A),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                        right: 12,
                      ),
                      child: Image.asset(
                        AppAsset.iconSearch,
                        width: 24,
                        height: 24,
                      ),
                    ),
                    border: InputBorder.none,
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

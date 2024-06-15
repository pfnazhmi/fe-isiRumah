import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isirumah/core/app_asset.dart';
import 'package:isirumah/core/app_color.dart';
import 'package:isirumah/widget/button.dart';

class DetailshopPage extends StatelessWidget {
  const DetailshopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Shop',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColor.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 351,
                decoration: BoxDecoration(
                  color: AppColor.grey,
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage(AppAsset.shopKursi),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Deskripsi Produk',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColor.black,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Ini adalah deskripsi lengkap dari produk yang ditampilkan. Deskripsi ini menjelaskan detail produk, fitur, dan manfaatnya. Pastikan untuk memberikan informasi yang lengkap dan menarik agar calon pembeli tertarik.',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.black,
                ),
              ),
              const SizedBox(height: 32),
              Button(
                label: "Lihat di browserr",
                onTap: () {},
                isExpand: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}

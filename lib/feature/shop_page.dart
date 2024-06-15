import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isirumah/core/app_asset.dart';
import 'package:isirumah/core/app_color.dart';
import 'package:isirumah/feature/detail_shop_page.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.bgScreen,
        appBar: AppBar(
          backgroundColor: AppColor.bgScreen,
          elevation: 0,
          shadowColor: Colors.transparent,
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                searchField(),
                const SizedBox(
                  height: 24,
                ),
                cardShop(context),
                const SizedBox(
                  height: 12,
                ),
                cardShop(context),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ));
  }

  InkWell cardShop(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailshopPage(),
          ),
        );
      },
      child: Container(
        width: 343,
        height: 131,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Image.asset(
              AppAsset.shopKursi,
              width: 187,
              height: 96,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nama Vendor',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        color: AppColor.grey,
                        fontWeight: FontWeight.w400),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Nama Produk',
                    style: GoogleFonts.plusJakartaSans(
                        color: AppColor.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Rp. 123.456',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container searchField() {
    return Container(
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
    );
  }
}

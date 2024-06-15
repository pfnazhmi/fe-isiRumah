import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isirumah/core/app_asset.dart';
import 'package:isirumah/core/app_color.dart';
import 'package:isirumah/feature/buatpost_page.dart';
import 'package:isirumah/feature/detail_post.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: AppColor.bgScreen,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Image.asset(AppAsset.logo),
                  const SizedBox(height: 24),
                  searchField(),
                  const SizedBox(height: 24),
                  cardPost(context),  // Pass context to the cardPost function
                  const SizedBox(height: 12),
                  cardPost(context),  // Pass context to the cardPost function
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BuatpostPage(),
                ),
              );
            },
            backgroundColor: AppColor.primary,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  InkWell cardPost(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPostPage(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(AppAsset.profile),
                      ),
                      const SizedBox(width: 12),
                      Flexible(
                        child: Text(
                          'Title Post123456782738274837482374828',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Oleh ',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            color: AppColor.grey,
                          ),
                        ),
                        TextSpan(
                          text: 'User',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColor.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Deskripsi postingan Anda di sini..',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: SizedBox(
                      width: 320,
                      height: 132,
                      child: Image.asset(
                        AppAsset.posting,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "1 hour",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  color: AppColor.grey,
                ),
              ),
            ),
            const SizedBox(height: 12),
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
          hintText: 'Mau cari apa nih?',
          hintStyle: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: const Color(0xFF1A1A1A),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 14, right: 12),
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

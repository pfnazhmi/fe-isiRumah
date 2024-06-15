import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isirumah/core/app_color.dart';
import 'package:isirumah/core/app_asset.dart';

class DetailPostPage extends StatefulWidget {
  const DetailPostPage({super.key});

  @override
  State<DetailPostPage> createState() => _DetailPostPageState();
}

class _DetailPostPageState extends State<DetailPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgScreen,
      appBar: AppBar(
        backgroundColor: AppColor.bgScreen,
        elevation: 0,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: true,
        title: Text(
          'Detail Post',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: AppColor.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFF7A7A7A).withOpacity(0.2),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(AppAsset.profile),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "User Role",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColor.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Komentar deskripsi yang sangat panjang ini adalah contoh dari konten yang ditampilkan dalam deskripsi detail post. Ini bisa berisi beberapa paragraf teks untuk memberikan pengguna informasi yang komprehensif tentang post.",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.reply,
                            color: AppColor.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Reply",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColor.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Tambah Komentar...',
                  hintStyle: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    color: const Color(0xFF7A7A7A),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: AppColor.bgScreen,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send, color: AppColor.primary),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

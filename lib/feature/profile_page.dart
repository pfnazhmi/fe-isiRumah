import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isirumah/core/app_asset.dart';
import 'package:isirumah/core/app_color.dart';
import 'package:isirumah/widget/button.dart';
import 'package:isirumah/widget/button_logout.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColor.bgScreen,
        child: Column(
          children: [
            Container(
              color: AppColor.bgScreen,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              height: kToolbarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 16,),
                    profileImage(),
                    const SizedBox(height: 24,),
                    cardFollow(),
                    const SizedBox(height: 24,),
                    cardItemProfile(context),
                    const SizedBox(height: 24,),
                    ButtonLogout(label: "Logout", onTap: (){}, isExpand: true),
                    const SizedBox(height: 16,),
                    Text("App Version 1.1", style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey,
                      fontSize: 14,
                    ),),
                    const SizedBox(height: 24,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container cardItemProfile(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFF7A7A7A).withOpacity(0.2),
        ),
      ),
      child: Column(
        children: [
          itemNameProfile(context, "Pengaturan", () {}),
          const Divider(
            color: Color(0xFFD9D9D9),
            thickness: 1,
            indent: 16,
            endIndent: 16,
          ),
          itemNameProfile(context, "Tentang isiRumah", () {}),
          const Divider(
            color: Color(0xFFD9D9D9),
            thickness: 1,
            indent: 16,
            endIndent: 16,
          ),
          itemNameProfile(context, "Bantuan dan Pendukung", () {}),
        ],
      ),
    );
  }

  Padding itemNameProfile(BuildContext context, String item, Function onTap) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: (){},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              item,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.black,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
              color: Color(0xFF7A7A7A),
            ),
          ],
        ),
      ),
    );
  }

  Container cardFollow() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                'Follower',
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '1200', // Angka follower
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppColor.primary,
                ),
              ),
            ],
          ),
          Container(
            height: 24,
            width: 1,
            color: Colors.grey,
          ),
          Column(
            children: [
              Text(
                'Following',
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8), 
              Text(
                '300', // Angka following
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppColor.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Center profileImage() {
    return Center(
      child: Image.asset(
        AppAsset.profilePage,
        width: 162,
        height: 162,
      ),
    );
  }
}

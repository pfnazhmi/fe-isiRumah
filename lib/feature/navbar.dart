import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isirumah/core/app_asset.dart';
import 'package:isirumah/core/app_color.dart';
import 'package:isirumah/feature/explore_page.dart';
import 'package:isirumah/feature/profile_page.dart';
import 'package:isirumah/feature/shop_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  static const List<Map<String, String>> _listNav = [
    {
      'iconSelected': AppAsset.selectedExplore,
      'iconUnselected': AppAsset.exploreUnselected,
      'label': 'Explore'
    },
    {
      'iconSelected': AppAsset.selectedShop,
      'iconUnselected': AppAsset.shopUnselected,
      'label': 'Shop'
    },
    {
      'iconSelected': AppAsset.selectedProfile,
      'iconUnselected': AppAsset.profileUnselected,
      'label': 'Profile'
    },
  ];

  final List<Widget> _pages = [
    const ExplorePage(),
    const ShopPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Material(
        elevation: 8,
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 8, bottom: 6),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            elevation: 0,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            selectedItemColor: AppColor.primary,
            selectedIconTheme: const IconThemeData(
              color: AppColor.primary,
            ),
            selectedLabelStyle: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w800,
              fontSize: 12,
            ),
            unselectedLabelStyle: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
            items: _listNav.map((e) {
              int index = _listNav.indexOf(e);
              return BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    _selectedIndex == index
                        ? e['iconSelected']!
                        : e['iconUnselected']!,
                  ),
                ),
                label: e['label'],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

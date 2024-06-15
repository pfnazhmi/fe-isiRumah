import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isirumah/core/app_color.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.label,
    required this.onTap,
    this.isExpand,
  });

  final String label;
  final Function onTap;
  final bool? isExpand;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(0, 5),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: AppColor.primary,
                        offset: Offset(2, 0),
                        blurRadius: 20)
                  ]),
              width: isExpand == null
                  ? null
                  : isExpand!
                      ? double.infinity
                      : null,
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(label),
            ),
          ),
          Align(
            //alignment: Alignment.center,
            child: Material(
              color: AppColor.primary,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => onTap(),
                child: Container(
                  width: isExpand == null
                      ? null
                      : isExpand!
                          ? double.infinity
                          : null,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isirumah/core/app_color.dart';
import 'package:isirumah/widget/button.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final controllerEmail = TextEditingController();
  bool isPasswordHidden = true;
  final controllerPassword = TextEditingController();

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 106,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Nama App.",
                      style: GoogleFonts.poppins(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primary),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  inputEmail(),
                  const SizedBox(
                    height: 16,
                  ),
                  inputPassword(),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Lupa Password?",
                      style: GoogleFonts.poppins(
                          //decoration: TextDecoration.underline,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.primary),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Button(
                    label: "Login sekarang",
                    onTap: () => {},
                    isExpand: true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Belum Punya Akun? ',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFAFAFAF),
                      ),
                      children: [
                        TextSpan(
                          text: 'Daftar',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            //decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primary,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => SignupPage()));
                            },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Atau",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF444444),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField inputPassword() {
    return TextFormField(
      controller: controllerPassword,
      obscureText: isPasswordHidden,
      validator: (value) =>
          value == "" ? 'Kamu harus mengisi username dan password' : null,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: const Color(0xFFF1F1F1),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintText: "Password",
        hintStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF7A7A7A),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColor.primary),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              isPasswordHidden = !isPasswordHidden;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              isPasswordHidden
                  ? FluentSystemIcons.ic_fluent_eye_hide_regular
                  : FluentSystemIcons.ic_fluent_eye_show_regular,
              color: const Color(0xFFAEAECF),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField inputEmail() {
    return TextFormField(
      controller: controllerEmail,
      validator: (value) =>
          value == "" ? 'Kamu harus mengisi username dan password' : null,
      decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: const Color(0xFFF1F1F1),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          hintText: "Email",
          hintStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF7A7A7A),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColor.primary),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none)),
    );
  }
}

class FluentSystemIcons {}

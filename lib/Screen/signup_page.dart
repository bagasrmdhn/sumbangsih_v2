import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Theme/theme.dart';
import 'Welcome_page.dart';

class SignupPage extends StatefulWidget {
  static const routeName = '/signup_page';

  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        centerTitle: true,
        title: Text(
          'Sumbangsih!',
          textAlign: TextAlign.center,
          style: whiteTextStyle.copyWith(fontWeight: semiBold, fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          // padding: const EdgeInsets.only(
          //   top: 10,
          //   left: 16,
          //   right: 35,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 12,
                ),
                child: Text(
                  'Langkah baik untuk berbagi dimulai dari sini',
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 12,
                ),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: 'Nama Lengkap',
                      hintStyle: greyTextStyle.copyWith(
                          fontWeight: light, fontSize: 16)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 16,
                  right: 12,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Nomor Telepon',
                      hintStyle: greyTextStyle.copyWith(
                          fontWeight: light, fontSize: 16)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 16,
                  right: 12,
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: greyTextStyle.copyWith(
                          fontWeight: light, fontSize: 16)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 16,
                  right: 12,
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle:
                        greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 29, left: 16, right: 12, bottom: 16),
                  child: SizedBox(
                    width: 400,
                    height: 39,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, SignupPage.routeName);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(greenColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: greenColor),
                            ),
                          ),
                        ),
                        child: Text(
                          'Selanjutnya',
                          style: whiteTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 18,
                          ),
                        )),
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Sudah punya akun?',
                          style: greenTextStyle.copyWith(
                              fontWeight: FontWeight.normal, fontSize: 14)),
                      TextSpan(
                          text: ' Masuk disini!',
                          style: greenTextStyle.copyWith(
                              fontSize: 14, fontWeight: bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacementNamed(
                                  context, WelcomePage.routeName);
                            })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

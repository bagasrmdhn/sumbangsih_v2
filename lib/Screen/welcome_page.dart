import 'package:flutter/material.dart';
import 'package:sumbangsih_v2/Theme/theme.dart';

import 'signup_page.dart';

class WelcomePage extends StatelessWidget {
  static const routeName = '/welcome_page';
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              ),
          Positioned(
            bottom: -10,
            left: -5,
            right: -5,
            child: Container(
              height: 200,
              width: 100,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: greenColor),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Welcome To Sumbangsih!',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et est a tellus dignissim ultrices eu facilisis lectus.',
                      style: whiteTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 11,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 350,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, SignupPage.routeName);
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(whiteColor)),
                        child: Text(
                          'Mulai Berbagi!',
                          style: greenTextStyle.copyWith(
                              fontWeight: bold, fontSize: 14),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

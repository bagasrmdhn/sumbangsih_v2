import 'package:flutter/material.dart';
import 'Screen/Welcome_page.dart';
import 'Screen/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomePage.routeName,
      routes: {
        WelcomePage.routeName: (context) => const WelcomePage(),
        SignupPage.routeName: (context) => const SignupPage(),
        // LoginPage.routeName: (context) => const LoginPage(),
        // HomePage.routeName: (context) => const HomePage(),
        //   HomePage.routeName: (context) => const HomePage(
        //     name: '',
        //   ),
        //   CategoryDetail.routeName: (context) => CategoryDetail(
        //     id: ModalRoute.of(context)?.settings.arguments as String,
        //   ),
        //   RecipeDetail.routeName: (context) => RecipeDetail(
        //     id: ModalRoute.of(context)?.settings.arguments as String,
        //   ),
        //   MainScreen.routeName: (context) => const MainScreen(
        //     name: '',
        //   ),
        //   SearchPage.routeName: (context) => SearchPage(),
      },
    );
  }
}

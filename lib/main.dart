import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spacee/first_home_page.dart';
import 'package:spacee/sign_in_page.dart';
import 'package:spacee/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstHomePage(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText(
              "Space",
              textAlign: TextAlign.center,
              textStyle: TextStyle(
                  fontSize: 43,
                  color: HexColor('#0191E5'),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PressStart'),
              speed: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
      nextScreen: const MyHome(),
      backgroundColor: Colors.white,
      duration: 1000,
      centered: true,
      // splashTransition: SplashTransition.fadeTransition
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool isElevatedLogin = true;
  bool isElevatedSignUp = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: FittedBox(
                child: NeumorphicText(
                  "Welcome To Space",
                  style: const NeumorphicStyle(
                    shadowDarkColor: Colors.blueGrey,
                    depth: 1,
                    color: Colors.black87,
                  ),
                  textStyle: NeumorphicTextStyle(
                      letterSpacing: 2,
                      fontSize: MediaQuery.of(context).size.height * 0.05,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PTSerif'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: FittedBox(
                child: NeumorphicText(
                  "Give The Best Answer To All Of Your Questions",
                  style: const NeumorphicStyle(
                    shadowDarkColor: Colors.black87,
                    depth: 1,
                    color: Colors.black87,
                  ),
                  textStyle: NeumorphicTextStyle(
                      letterSpacing: 2,
                      fontSize: MediaQuery.of(context).size.height * 0.05,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PTSerif'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LogInPage()),
                );
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: isElevatedLogin
                    ? [
                  BoxShadow(
                      color: Colors.grey[500]!,
                      offset: const Offset(4, 4),
                      blurRadius: 10,
                      spreadRadius: 1),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 10,
                      spreadRadius: 1),
                ]
                    : null,
              ),
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.74,
              child: Center(
                child: NeumorphicText(
                  "Log In",
                  style: const NeumorphicStyle(
                    shadowDarkColor: Colors.grey,
                    depth: 2, //customize depth here
                    color: Colors.black87,
                  ),
                  textStyle: NeumorphicTextStyle(
                      letterSpacing: 2,
                      fontSize: MediaQuery.of(context).size.height * 0.05,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PTSerif'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                color: HexColor('#0191E5'),
                borderRadius: BorderRadius.circular(50),
                boxShadow: isElevatedSignUp
                    ? [
                  const BoxShadow(
                      color: Colors.blue,
                      offset: Offset(4, 4),
                      blurRadius: 8,
                      spreadRadius: 1),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 10,
                      spreadRadius: 1),
                ]
                    : null,
              ),
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.74,
              child: Center(
                child: NeumorphicText(
                  "Sign Up",
                  style: const NeumorphicStyle(
                    shadowDarkColor: Colors.blueGrey,
                    depth: 2, //customize depth here
                    color: Colors.black87,
                  ),
                  textStyle: NeumorphicTextStyle(
                      letterSpacing: 2,
                      fontSize: MediaQuery.of(context).size.height * 0.05,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PTSerif'),
                ),
                // Text(
                //   'Sign Up',
                //   style: TextStyle(
                //     fontSize: MediaQuery.of(context).size.width * 0.09,
                //     fontFamily: 'PTSerif',
                //     fontWeight: FontWeight.bold,
                //     letterSpacing: 2,
                //   ),
                // ),
              ),
            ),

          ),
        ],
      ),
    );
  }
}

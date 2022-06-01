import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hexcolor/hexcolor.dart';
import 'components/big_text_header.dart';
import 'components/input_decoration_text_field.dart';
import 'components/text_inside_button.dart';
import 'components/text_up_text_field.dart';
import 'first_home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _showEyeCon = true;
  bool _showEye = true;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05),
                child: Center(
                  child: FittedBox(
                    child: BigTextHeader(
                        text: "Sign Up",
                        shadowColor: Colors.grey,
                        depth: 100,
                        textColor: Colors.black87,
                        letterSpacing: 2,
                        textSize: MediaQuery.of(context).size.height * 0.11,
                        fontfamily: 'Lobster'),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, bottom: 88.0, right: 18.0, top: 100.4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextUpTextField(
                        text: "Email",
                        shadowColor: Colors.blueGrey,
                        depth: 1,
                        textColor: Colors.black54,
                        letterSpacing: 2,
                        textSize: MediaQuery.of(context).size.height * 0.03,
                        fontfamily: 'PTSerif'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.22),
                                offset: Offset(1, 1),
                                blurRadius: 14.0,
                                spreadRadius: 2.0),
                            BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 0.65),
                                offset: Offset(-1, -2),
                                blurRadius: 6.0,
                                spreadRadius: 3.0)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: InputDecoratoinTextField(
                          icon: const Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          colorIcon: Colors.black,
                          isBorder: InputBorder.none,
                          hintText: "User123@gmail.com",
                          fontfmaily: 'PTSerif',
                          isFontweightBold: FontWeight.bold,
                          hintColor: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    TextUpTextField(
                        text: "Password",
                        shadowColor: Colors.blueGrey,
                        depth: 1,
                        textColor: Colors.black54,
                        letterSpacing: 2,
                        textSize: MediaQuery.of(context).size.height * 0.03,
                        fontfamily: 'PTSerif'),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.22),
                                offset: Offset(1, 1),
                                blurRadius: 14.0,
                                spreadRadius: 2.0),
                            BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 0.65),
                                offset: Offset(-1, -2),
                                blurRadius: 6.0,
                                spreadRadius: 3.0)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: TextField(
                          decoration: InputDecoration(
                              floatingLabelBehavior:
                              FloatingLabelBehavior.never,
                              suffixIcon: _showEye
                                  ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showEye = !_showEye;
                                  });
                                },
                                child: const Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.black,
                                ),
                              )
                                  : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showEye = !_showEye;
                                  });
                                },
                                child: const Icon(
                                  Icons.visibility_off,
                                  color: Colors.black,
                                ),
                              ),
                              icon: const Icon(
                                Icons.lock,
                                color: Colors.black87,
                                semanticLabel: "andam",
                              ),
                              border: InputBorder.none,
                              hintText: "*********",
                              hintStyle: const TextStyle(
                                  fontFamily: 'PTSerif',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54)),
                          obscureText: _showEye,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    NeumorphicText(
                      "Confirm Password",
                      style: const NeumorphicStyle(
                        shadowDarkColor: Colors.blueGrey,
                        depth: 1, //customize depth here
                        color: Colors.black54,
                      ),
                      textStyle: NeumorphicTextStyle(
                          letterSpacing: 2,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PTSerif'),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.22),
                                offset: Offset(1, 1),
                                blurRadius: 14.0,
                                spreadRadius: 2.0),
                            BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 0.65),
                                offset: Offset(-1, -2),
                                blurRadius: 6.0,
                                spreadRadius: 3.0)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: TextField(
                          decoration: InputDecoration(
                              floatingLabelBehavior:
                              FloatingLabelBehavior.never,
                              suffixIcon: _showEyeCon
                                  ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showEyeCon = !_showEyeCon;
                                  });
                                },
                                child: const Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.black,
                                ),
                              )
                                  : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showEyeCon = !_showEyeCon;
                                  });
                                },
                                child: const Icon(
                                  Icons.visibility_off,
                                  color: Colors.black,
                                ),
                              ),
                              icon: const Icon(
                                Icons.lock,
                                color: Colors.black87,
                                semanticLabel: "andam",
                              ),
                              border: InputBorder.none,
                              hintText: "*********",
                              hintStyle: const TextStyle(
                                  fontFamily: 'PTSerif',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54)),
                          obscureText: _showEyeCon,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    TextUpTextField(
                        text: "Your Province",
                        shadowColor: Colors.blueGrey,
                        depth: 1,
                        textColor: Colors.black54,
                        letterSpacing: 2,
                        textSize: MediaQuery.of(context).size.height * 0.03,
                        fontfamily: 'PTSerif'),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.22),
                                offset: Offset(1, 1),
                                blurRadius: 14.0,
                                spreadRadius: 2.0),
                            BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 0.65),
                                offset: Offset(-1, -2),
                                blurRadius: 6.0,
                                spreadRadius: 3.0)
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: InputDecoratoinTextField(
                            icon: const Icon(
                              Icons.house,
                              color: Colors.black,
                            ),
                            colorIcon: Colors.black,
                            isBorder: InputBorder.none,
                            hintText: "Enter Your Province",
                            fontfmaily: 'PTSerif',
                            isFontweightBold: FontWeight.bold,
                            hintColor: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1,
                        top: MediaQuery.of(context).size.width * 0.03,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FirstHomePage()),
                            );
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            color: HexColor('#0191E5'),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.blue,
                                  offset: Offset(4, 4),
                                  blurRadius: 8,
                                  spreadRadius: 1),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-4, -4),
                                  blurRadius: 10,
                                  spreadRadius: 1),
                            ],
                          ),
                          height: _height >= 500
                              ? MediaQuery.of(context).size.height * 0.08
                              : 50,
                          width: MediaQuery.of(context).size.width * 0.74,
                          child: Center(
                            child: TextInsideButton(
                              letterSpacing: 2,
                              text: 'Sign Up',
                              depth: 2,
                              shadowColor: Colors.blueGrey,
                              textColor: Colors.black87,
                              textSize: _height * 0.05,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Positioned.fill(
                child: Align(
                  heightFactor: _height,
                  alignment: Alignment.bottomCenter,
                  child:  GestureDetector(
                    onTap: () {
                      setState(
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()),
                          );
                        },
                      );
                    },
                    child: NeumorphicText(
                      "Don't Have an account?",
                      textAlign: TextAlign.center,
                      style: const NeumorphicStyle(
                        shadowDarkColor: Colors.grey,
                        depth: 1, //customize depth here
                        color: Colors.black87,
                      ),
                      textStyle: NeumorphicTextStyle(
                          letterSpacing: 2,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PTSerif'),
                    ),
                  ) ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

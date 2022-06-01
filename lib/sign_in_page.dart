
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spacee/sign_up_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _showEye = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05),
              child: FittedBox(
                child: NeumorphicText(
                  "Log In",
                  style: const NeumorphicStyle(
                    shadowDarkColor: Colors.grey,
                    depth: 100,
                    color: Colors.black87, //customize color here
                  ),
                  textStyle: NeumorphicTextStyle(
                      letterSpacing: 2,
                      fontSize: MediaQuery.of(context).size.height * 0.11,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster'),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  NeumorphicText(
                    "Email",
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
                    child: const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "User123@gmail.com",
                          hintStyle: TextStyle(
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  NeumorphicText(
                    "Password",
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
                      padding: EdgeInsets.only(left: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            suffixIcon: _showEye
                                ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  _showEye = !_showEye;
                                });
                              },
                              child: Icon(
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
                              child: Icon(
                                Icons.visibility_off,
                                color: Colors.black,
                              ),
                            ),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black87,
                              semanticLabel: "andam",
                            ),
                            border: InputBorder.none,
                            hintText: "*********",
                            hintStyle: TextStyle(
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
                  Container(
                    width: double.infinity,
                    child: NeumorphicText(
                      "ForgetPassword?",
                      textAlign: TextAlign.right,
                      style: const NeumorphicStyle(
                        shadowDarkColor: Colors.blueGrey,
                        depth: 1, //customize depth here
                        color: Colors.black54,
                      ),
                      textStyle: NeumorphicTextStyle(
                          letterSpacing: 2,
                          fontSize: MediaQuery.of(context).size.height * 0.024,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PTSerif'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1,
                      top: MediaQuery.of(context).size.width * 0.03,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {});
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
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.74,
                        child: Center(
                          child: NeumorphicText(
                            "Log In",
                            style: const NeumorphicStyle(
                              shadowDarkColor: Colors.blueGrey,
                              depth: 2, //customize depth here
                              color: Colors.black87,
                            ),
                            textStyle: NeumorphicTextStyle(
                                letterSpacing: 2,
                                fontSize:
                                MediaQuery.of(context).size.height * 0.05,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'PTSerif'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(children: <Widget>[
                const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 2,
                    )),
                NeumorphicText(
                  "OR Sign Up With",
                  style: const NeumorphicStyle(
                    depth: 1, //customize depth here
                    color: Colors.black,
                  ),
                  textStyle: NeumorphicTextStyle(
                      letterSpacing: 2,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PTSerif'),
                ),
                const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 2,
                    )),
              ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const CircleAvatar(
                  child: Image(
                    image: AssetImage('assets/facebook.png'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image(
                    image: AssetImage('assets/google.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpPage()),
                      );
                    });
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
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}




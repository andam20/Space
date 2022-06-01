import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spacee/components/text_up_text_field.dart';
import 'package:spacee/sign_in_page.dart';
import 'package:spacee/sign_up_page.dart';

class Recently extends StatefulWidget {
  const Recently({Key? key}) : super(key: key);

  @override
  State<Recently> createState() => _RecentlyState();
}

class _RecentlyState extends State<Recently> {
  List questions = [
    'How many hours need to rich barzan?',
    'Where should i start if i want to get driving licenseWhere should i start if i want to get driving licenseWhere should i start if i want to get driving licenseWhere should i start if i want to get driving license',
    'How many hours need to rich barzan?',
    'Where should i start if i want to get driving license',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) => Container(
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(22),
            ),
          ),
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 259,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpPage()),
                      );
                    });
                  },
                  splashColor: Colors.black,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 8,
                        top: 8,
                        child: Align(
                          alignment: const Alignment(-1.0, -1.0),
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width * 0.9,
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              questions[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.9, -0.1),
                        child: Image.asset(
                          'assets/yes.jpg',
                          height: 60,
                          width: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        left: 82,
                        top: 87,
                        child: Align(
                          alignment: Alignment(-0.3, -0.0),
                          child: Container(
                            width: 180,
                            child: const Text(
                              "Andam Adam",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 75,
                        top: 117,
                        child: Align(
                          alignment: const Alignment(-0.4, -0.25),
                          child: TextUpTextField(
                              text: "10 votes,12 Answers",
                              shadowColor: Colors.grey,
                              depth: 111,
                              textColor: Colors.black,
                              letterSpacing: 1,
                              textSize: 15,
                              fontfamily: 'PTSerif'),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0.9, -0.25),
                        child: TextUpTextField(
                            text: "10/12/2022",
                            shadowColor: Colors.grey,
                            depth: 111,
                            textColor: Colors.black,
                            letterSpacing: 1,
                            textSize: 15,
                            fontfamily: 'PTSerif'),
                      ),
                      Align(
                        alignment: const Alignment(0.0, 1.0),
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            height: 83,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12)),
                              color: Colors.blue,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => const LogInPage()),
                                            );
                                          });
                                        },
                                        child: Image.asset(
                                          'assets/heart.png',
                                          height: 40,
                                          width: 40,
                                        ),
                                      ),
                                      TextUpTextField(
                                          text: '12',
                                          shadowColor: Colors.grey,
                                          depth: 1,
                                          textColor: Colors.black,
                                          letterSpacing: 1,
                                          textSize: 17,
                                          fontfamily: 'PTSerif')
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/chat.png',
                                        height: 40,
                                        width: 40,
                                      ),
                                      TextUpTextField(
                                          text: '12',
                                          shadowColor: Colors.grey,
                                          depth: 1,
                                          textColor: Colors.black,
                                          letterSpacing: 1,
                                          textSize: 17,
                                          fontfamily: 'PTSerif')
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/arrow_up.png',
                                        height: 40,
                                        width: 40,
                                      ),
                                      TextUpTextField(
                                          text: '12',
                                          shadowColor: Colors.grey,
                                          depth: 1,
                                          textColor: Colors.black,
                                          letterSpacing: 1,
                                          textSize: 17,
                                          fontfamily: 'PTSerif')
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/down_arrow.png',
                                        height: 40,
                                        width: 40,
                                      ),
                                      TextUpTextField(
                                          text: '12',
                                          shadowColor: Colors.grey,
                                          depth: 1,
                                          textColor: Colors.black,
                                          letterSpacing: 1,
                                          textSize: 17,
                                          fontfamily: 'PTSerif')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 12,
        tooltip: 'Add Question',
        onPressed: () {},
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 1.0),
            borderRadius: BorderRadius.circular(30),
            color: HexColor('#1084C8'),
          ),
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 43,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spacee/recently.dart';
import 'package:spacee/week.dart';

import 'components/big_text_header.dart';
import 'month.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Stack(
            children: [
              Align(
                alignment: const Alignment(-1.0, -1.0),
                child: BigTextHeader(
                    text: 'Home Space',
                    shadowColor: Colors.grey,
                    depth: 100,
                    textColor: Colors.black87,
                    letterSpacing: 2,
                    textSize: 30,
                    fontfamily: 'Lobster'),
              ),
              Positioned(
                right: 14,
                top: 7,
                child: Align(
                  alignment: const Alignment(1.0, -1.0),
                  child: CircleAvatar(
                    minRadius: 17,
                    maxRadius: 17,
                    backgroundColor: Colors.grey[200],
                    child: Image.asset('assets/search.png'),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.6, -0.98),
                child: CircleAvatar(
                  minRadius: 17,
                  maxRadius: 17,
                  backgroundColor: Colors.grey[200],
                  child: Image.asset('assets/alert.png'),
                ),
              ),
              Align(
                alignment: const Alignment(-1.0, -0.8),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 5,
                  child: TabBar(
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[300]),
                    //  indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: HexColor('#0191E5'),
                    tabs: const [
                      Tab(
                        child: Text(
                          "Recently",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'PTSerif',
                              fontSize: 18),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Week",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'PTSerif',
                              fontSize: 18),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Month",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'PTSerif',
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.9, -0.8),
                child: TabBarView(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 1.0),
                      child: Tab(
                        height: MediaQuery.of(context).size.height * 0.667,
                        child: Recently(),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.0, 1.0),
                      child: Tab(
                        height: MediaQuery.of(context).size.height * 0.667,
                        child: Week(),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.0, 1.0),
                      child: Tab(
                        height: MediaQuery.of(context).size.height * 0.667,
                        child: Month(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

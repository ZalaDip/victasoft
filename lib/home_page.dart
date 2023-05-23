import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: 1897 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    0 * fem, 51 * fem, 0 * fem, 43.69 * fem),
                width: 428 * fem,
                height: 1063 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          10 * fem, 0 * fem, 10 * fem, 12 * fem),
                      width: double.infinity,
                      height: 70 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 28 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                5 * fem, 5 * fem, 5 * fem, 5 * fem),
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(500 * fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: 50 * fem,
                                      height: 50 * fem,
                                      child: Image.asset(
                                        "assets/images/location-cwG.png",
                                        width: 50 * fem,
                                        height: 50 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: 50 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius:
                                          BorderRadius.circular(25 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0x35000000),
                                          offset: Offset(0 * fem, 3 * fem),
                                          blurRadius: 2.5 * fem,
                                        ),
                                      ],
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "En",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // logoRhG (3856:21450)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 15 * fem, 0 * fem),
                            width: 70 * fem,
                            height: 70 * fem,
                            child: Image.asset(
                              'assets/images/logo-ELE.png',
                              width: 70 * fem,
                              height: 70 * fem,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                5 * fem, 5 * fem, 5 * fem, 5 * fem),
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(500 * fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero),
                                    child: SizedBox(
                                      width: 50 * fem,
                                      height: 50 * fem,
                                      child: Image.asset(
                                        "assets/images/filter.png",
                                        width: 50 * fem,
                                        height: 50 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: SizedBox(
                                    width: 50 * fem,
                                    height: 50 * fem,
                                    child: Image.asset(
                                      "assets/images/notification.png",
                                      width: 50 * fem,
                                      height: 50 * fem,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                      width: 428 * fem,
                      height: 241 * fem,
                      child: Image.asset(
                        "assets/images/header.png",
                        width: 428 * fem,
                        height: 241 * fem,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          27 * fem, 0 * fem, 28 * fem, 6 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                10 * fem, 0 * fem, 100 * fem, 1 * fem),
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 8 * fem, 0 * fem, 0 * fem),
                            child: const Text(
                              "EVENT NEAR YOU",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 5 * fem, 0 * fem),
                            child: const Text(
                              "VIEW ALL",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 2 * fem),
                            width: 9 * fem,
                            height: 17 * fem,
                            child:
                                Image.asset("assets/images/vector-6-9dp.png"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 5.14 * fem, 32.69 * fem),
                      width: 388.86 * fem,
                      height: 265.31 * fem,
                      child: Image.asset(
                        "assets/images/updated-event-cards.png",
                        width: 388.86 * fem,
                        height: 265.31 * fem,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          27 * fem, 0 * fem, 28 * fem, 6 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                10 * fem, 0 * fem, 130 * fem, 1 * fem),
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 8 * fem, 0 * fem, 0 * fem),
                            child: const Text(
                              "POPULAR NOW",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 5 * fem, 0 * fem),
                            child: const Text(
                              "VIEW ALL",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 2 * fem),
                            width: 9 * fem,
                            height: 17 * fem,
                            child:
                                Image.asset("assets/images/vector-7-pUn.png"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 5.14 * fem, 0 * fem),
                      width: 388.86 * fem,
                      height: 265.31 * fem,
                      child: Image.asset(
                        "assets/images/updated-event-cards-nmk.png",
                        width: 388.86 * fem,
                        height: 265.31 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0 * fem,
              top: 1063 * fem,
              child: Container(
                width: 428 * fem,
                height: 389 * fem,
                decoration: const BoxDecoration(
                  color: Color(0xfff5f5f5),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 29 * fem,
                      top: 53 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 8 * fem, 0 * fem, 0 * fem),
                        width: 246 * fem,
                        height: 30 * fem,
                        child: const Text(
                          "RECENTLY VIEWED",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0 * fem,
                      top: 78 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 428 * fem,
                          height: 283 * fem,
                          child: Image.asset(
                            "assets/images/recently-viewed.png",
                            width: 428 * fem,
                            height: 283 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0 * fem,
              top: 1502 * fem,
              child: SizedBox(
                width: 428 * fem,
                height: 297 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      left: 29 * fem,
                      top: 0 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 8 * fem, 0 * fem, 0 * fem),
                        width: 246 * fem,
                        height: 30 * fem,
                        child: const Text(
                          "RECENTLY VIEWED",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0 * fem,
                      top: 24 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 428 * fem,
                          height: 273 * fem,
                          child: Image.asset(
                            "assets/images/organizer-cards.png",
                            width: 428 * fem,
                            height: 273 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0 * fem,
              top: 848 * fem,
              child: Align(
                child: SizedBox(
                  width: 428 * fem,
                  height: 78 * fem,
                  child: Image.asset(
                    "assets/images/nav-bar-aoQ.png",
                    width: 428 * fem,
                    height: 78 * fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

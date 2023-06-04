import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:victadoft/api_services.dart';
import 'package:victadoft/utils.dart';
import 'modal.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Victasoft> victasoft = <Victasoft>[];
  Victasoft? victasoftData;
  DateTime now = DateTime.now();
  String formattedDate =
      DateFormat('yyyy, MMM d').format(DateTime.utc(2022, 6, 20));
  String formattedTime = DateFormat('h:mm a').format(DateTime.utc(8, 30));
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    victasoftData = await getApp();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: victasoftData != null
          ? SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(5, 15, 11, 0),
                        padding: const EdgeInsets.only(top: 20),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              "assets/images/location-cwG.png",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 15, 11, 0),
                        padding: const EdgeInsets.only(top: 20),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                const BoxShadow(
                                  color: Color(0x35000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 2.5,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                "En",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2,
                                  color: Color(0xff2f243f),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(5, 15, 20, 0),
                        padding: const EdgeInsets.only(top: 20),
                        width: 70,
                        height: 70,
                        child: Image.asset(
                          "assets/images/logo-ELE.png",
                          width: 70,
                          height: 70,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 15, 11, 0),
                        padding: const EdgeInsets.only(top: 20),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              "assets/images/filter.png",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        padding: const EdgeInsets.only(top: 20),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              "assets/images/notification.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 227,
                      enlargeFactor: 0.3,
                      enlargeCenterPage: true,
                    ),
                    items: victasoftData!.data.benner.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 50 * fem, 8 * fem, 8 * fem),
                              height: 151 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.network(
                                  i.bannerImage,
                                  fit: BoxFit.cover,
                                  height: 151 * fem,
                                ),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    endIndent: 310,
                    indent: 20,
                    color: Colors.cyan,
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
                              0 * fem, 0 * fem, 54 * fem, 1 * fem),
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 8 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'EVENT NEAR YOU',
                            style: SafeGoogleFont(
                              'Urbanist',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2 * ffem / fem,
                              letterSpacing: 6.48 * fem,
                              color: const Color(0xff2f243f),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 5 * fem, 0 * fem),
                          child: Text(
                            'VIEW ALL',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont(
                              'Urbanist',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2 * ffem / fem,
                              color: const Color(0xff038e9c),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 2 * fem),
                          width: 9 * fem,
                          height: 17 * fem,
                          child: Image.asset(
                            'assets/images/vector-6-9dp.png',
                            width: 9 * fem,
                            height: 17 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 350,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: victasoftData?.data.allevent.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                            child: SizedBox(
                              width: 388.86 * fem / 2,
                              height: 265.31 * fem / 2,
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(25.0),
                                          topRight: Radius.circular(25.0)),
                                      child: Image.network(
                                        width: 428,
                                        height: 141,
                                        victasoftData!
                                            .data.allevent[index].eventImage,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.cyan.shade50,
                                      height: 60,
                                      width: double.infinity,
                                      child: Text(
                                        victasoftData!
                                            .data.allevent[index].eventName,
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Urbanist',
                                          fontSize: 22 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3 * ffem / fem,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    SizedBox(
                                      height: 60,
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                formattedDate,
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                formattedTime,
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 14 * ffem,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "To",
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 18 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.cyan,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                formattedDate,
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                formattedTime,
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 14 * ffem,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(Iconsax.heart),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Icon(Iconsax.share),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Icon(Iconsax.user_add)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    endIndent: 310,
                    indent: 20,
                    color: Colors.cyan,
                  ),
                  Container(
                    // autogrouptwd5KZg (BZ621orKbGWjUrysnZTWD5)
                    margin: EdgeInsets.fromLTRB(
                        27 * fem, 0 * fem, 28 * fem, 6 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // eventnearyouSPQ (3856:21441)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 54 * fem, 1 * fem),
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 8 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'POPULAR NOW',
                            style: SafeGoogleFont(
                              'Urbanist',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2 * ffem / fem,
                              letterSpacing: 6.48 * fem,
                              color: const Color(0xff2f243f),
                            ),
                          ),
                        ),
                        Container(
                          // viewallHQ2 (3856:21476)
                          margin: EdgeInsets.fromLTRB(
                              25 * fem, 0 * fem, 5 * fem, 0 * fem),
                          child: Text(
                            'VIEW ALL',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont(
                              'Urbanist',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2 * ffem / fem,
                              color: const Color(0xff038e9c),
                            ),
                          ),
                        ),
                        Container(
                          // vector6nbg (3856:21474)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 5 * fem, 2 * fem),
                          width: 9 * fem,
                          height: 17 * fem,
                          child: Image.asset(
                            'assets/images/vector-6-9dp.png',
                            width: 9 * fem,
                            height: 17 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 350,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: victasoftData?.data.allevent.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                            child: SizedBox(
                              width: 388.86 * fem / 2,
                              height: 265.31 * fem / 2,
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(25.0),
                                          topRight: Radius.circular(25.0)),
                                      child: Image.network(
                                        width: 428,
                                        height: 141,
                                        victasoftData!
                                            .data.allevent[index].eventImage,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.cyan.shade50,
                                      height: 60,
                                      width: double.infinity,
                                      child: Text(
                                        victasoftData!
                                            .data.allevent[index].eventName,
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Urbanist',
                                          fontSize: 22 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3 * ffem / fem,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 60,
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                formattedDate,
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                formattedTime,
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 14 * ffem,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "To",
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 18 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.cyan,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                formattedDate,
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                formattedTime,
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 14 * ffem,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(Iconsax.heart),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Icon(Iconsax.share),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Icon(Iconsax.user_add)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    endIndent: 310,
                    indent: 20,
                    color: Colors.cyan,
                  ),
                  Container(
                    // autogrouptwd5KZg (BZ621orKbGWjUrysnZTWD5)
                    margin: EdgeInsets.fromLTRB(
                        27 * fem, 0 * fem, 28 * fem, 6 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // eventnearyouSPQ (3856:21441)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 54 * fem, 1 * fem),
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 8 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'RECENTLY VIEWED',
                            style: SafeGoogleFont(
                              'Urbanist',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2 * ffem / fem,
                              letterSpacing: 6.48 * fem,
                              color: const Color(0xff2f243f),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 350,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: victasoftData?.data.eventcategory.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                            child: SizedBox(
                              width: 388.86 * fem / 2,
                              height: 265.31 * fem / 2,
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(25.0),
                                          topRight: Radius.circular(25.0)),
                                      child: Image.network(
                                        width: 428,
                                        height: 141,
                                        victasoftData!.data.eventcategory[index]
                                            .categoryImage,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.cyan.shade50,
                                      height: 60,
                                      width: double.infinity,
                                      child: Text(
                                        victasoftData!.data.eventcategory[index]
                                            .categoryName,
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Urbanist',
                                          fontSize: 22 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3 * ffem / fem,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 60,
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                formattedDate,
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                formattedTime,
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 14 * ffem,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "To",
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 18 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.cyan,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                formattedDate,
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                formattedTime,
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Urbanist',
                                                  fontSize: 14 * ffem,
                                                  height: 1.0 * ffem / fem,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      height: 10,
                                      thickness: 0.5,
                                      color: Colors.cyan,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(Iconsax.heart),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Icon(Iconsax.share),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Icon(Iconsax.user_add)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    endIndent: 310,
                    indent: 20,
                    color: Colors.cyan,
                  ),
                  Container(
                    // autogrouptwd5KZg (BZ621orKbGWjUrysnZTWD5)
                    margin: EdgeInsets.fromLTRB(
                        27 * fem, 0 * fem, 28 * fem, 6 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // eventnearyouSPQ (3856:21441)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 54 * fem, 1 * fem),
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 8 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'RECENTLY VIEWED',
                            style: SafeGoogleFont(
                              'Urbanist',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2 * ffem / fem,
                              letterSpacing: 6.48 * fem,
                              color: const Color(0xff2f243f),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 350,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: victasoftData?.data.eventcategory.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                            child: SizedBox(
                              width: 388.86 * fem / 2,
                              height: 265.31 * fem / 2,
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(25.0),
                                          topRight: Radius.circular(25.0)),
                                      child: Image.network(
                                        width: 428,
                                        height: 141,
                                        victasoftData!.data.eventcategory[index]
                                            .categoryImage,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      // color: Colors.cyan,
                                      height: 60,
                                      width: double.infinity,
                                      child: Text(
                                        victasoftData!.data.eventcategory[index]
                                            .categoryName,
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Urbanist',
                                          fontSize: 22 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3 * ffem / fem,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: double.infinity,
                                      child: Text(
                                        victasoftData!
                                            .data.allevent[index].eventLocation
                                            .toString(),
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Urbanist',
                                          fontSize: 20 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.0 * ffem / fem,
                                          color: Colors.cyan,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}

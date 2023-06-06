import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:victadoft/api_services.dart';
import 'package:victadoft/utils.dart';
import 'modal.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
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
                            margin: EdgeInsets.fromLTRB(0, 50, 8, 8),
                            height: 151,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25.0),
                              child: Image.network(
                                i.bannerImage,
                                fit: BoxFit.cover,
                                height: 151,
                              ),
                            ),
                          );
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
                    margin: EdgeInsets.fromLTRB(27, 0, 28, 6),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 54, 1),
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'EVENT NEAR YOU',
                              style: SafeGoogleFont(
                                'Urbanist',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                height: 1.2,
                                letterSpacing: 6.48,
                                color: const Color(0xff2f243f),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'VIEW ALL',
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Urbanist',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                                color: const Color(0xff038e9c),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                          width: 9,
                          height: 17,
                          child: Image.asset(
                            'assets/images/vector-6-9dp.png',
                            width: 9,
                            height: 17,
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
                              width: 388.86 / 2,
                              height: 265.31 / 2,
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
                                      child: Center(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            victasoftData!
                                                .data.allevent[index].eventName,
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Urbanist',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    SizedBox(
                                      height: 60,
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 16),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              children: [
                                                FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    formattedDate,
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Urbanist',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 1.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    formattedTime,
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Urbanist',
                                                      fontSize: 12,
                                                      height: 1.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    "To",
                                                    style: SafeGoogleFont(
                                                      'Urbanist',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.0,
                                                      color: Colors.cyan,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    formattedDate,
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Urbanist',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 1.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    formattedTime,
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Urbanist',
                                                      fontSize: 12,
                                                      height: 1.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
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
                    margin: EdgeInsets.fromLTRB(27, 0, 28, 6),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 54, 1),
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'POPULAR NOW',
                              style: SafeGoogleFont(
                                'Urbanist',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                height: 1.2,
                                letterSpacing: 6.48,
                                color: const Color(0xff2f243f),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 0, 5, 0),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'VIEW ALL',
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Urbanist',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                                color: const Color(0xff038e9c),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 2),
                          width: 9,
                          height: 17,
                          child: Image.asset(
                            'assets/images/vector-6-9dp.png',
                            width: 9,
                            height: 17,
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
                              width: 388.86 / 2,
                              height: 265.31 / 2,
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
                                      child: Center(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            victasoftData!
                                                .data.allevent[index].eventName,
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Urbanist',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 60,
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 16),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              children: [
                                                FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    formattedDate,
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Urbanist',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 1.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    formattedTime,
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Urbanist',
                                                      fontSize: 12,
                                                      height: 1.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    "To",
                                                    style: SafeGoogleFont(
                                                      'Urbanist',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.0,
                                                      color: Colors.cyan,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    formattedDate,
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Urbanist',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 1.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    formattedTime,
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Urbanist',
                                                      fontSize: 12,
                                                      height: 1.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
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
                    height: 25,
                  ),
                  Container(
                    height: 500,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          const Divider(
                            endIndent: 310,
                            indent: 20,
                            color: Colors.cyan,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(27, 0, 28, 6),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 54, 1),
                                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      'RECENTLY VIEWED',
                                      style: SafeGoogleFont(
                                        'Urbanist',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2,
                                        letterSpacing: 6.48,
                                        color: const Color(0xff2f243f),
                                      ),
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
                                itemCount:
                                    victasoftData?.data.eventcategory.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 30, 10, 0),
                                    child: SizedBox(
                                      width: 388.86 / 2,
                                      height: 265.31 / 2,
                                      child: Card(
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Column(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(25.0),
                                                      topRight: Radius.circular(
                                                          25.0)),
                                              child: Image.network(
                                                width: 428,
                                                height: 141,
                                                victasoftData!
                                                    .data
                                                    .eventcategory[index]
                                                    .categoryImage,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Container(
                                              color: Colors.cyan.shade50,
                                              height: 60,
                                              width: double.infinity,
                                              child: Center(
                                                child: FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    victasoftData!
                                                        .data
                                                        .eventcategory[index]
                                                        .categoryName,
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Urbanist',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.3,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              height: 60,
                                              width: double.infinity,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 16),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            formattedDate,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                SafeGoogleFont(
                                                              'Urbanist',
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              height: 1.0,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                        FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            formattedTime,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                SafeGoogleFont(
                                                              'Urbanist',
                                                              fontSize: 12,
                                                              height: 1.0,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            "To",
                                                            style:
                                                                SafeGoogleFont(
                                                              'Urbanist',
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.0,
                                                              color:
                                                                  Colors.cyan,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            formattedDate,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                SafeGoogleFont(
                                                              'Urbanist',
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              height: 1.0,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                        FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            formattedTime,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                SafeGoogleFont(
                                                              'Urbanist',
                                                              fontSize: 12,
                                                              height: 1.0,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
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
                        ],
                      ),
                    ),
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
                    margin: EdgeInsets.fromLTRB(27, 0, 28, 6),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 54, 1),
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'RECENTLY VIEWED',
                              style: SafeGoogleFont(
                                'Urbanist',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                height: 1.2,
                                letterSpacing: 6.48,
                                color: const Color(0xff2f243f),
                              ),
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
                              width: 388.86 / 2,
                              height: 265.31 / 2,
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
                                      height: 60,
                                      width: double.infinity,
                                      child: Center(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            victasoftData!
                                                .data
                                                .eventcategory[index]
                                                .categoryName,
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Urbanist',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      width: double.infinity,
                                      child: Text(
                                        victasoftData!.data.eventcategory[index]
                                            .categoryDescription
                                            .toString(),
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Urbanist',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          height: 1.0,
                                          color: Colors.cyan,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
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
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          backgroundColor: Colors.grey.shade300,
          elevation: 5.0,
          iconSize: 26,
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.cyan.shade500,
          items: [
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(
                Iconsax.search_favorite,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Save',
              icon: Icon(
                Iconsax.save_2,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Liked',
              icon: Icon(
                Iconsax.heart,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'User',
              icon: Icon(
                Iconsax.user,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

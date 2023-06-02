import 'package:flutter/material.dart';
import 'package:victadoft/api_services.dart';
import 'modal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Victasoft> victasoft = <Victasoft>[];
  Victasoft? victasoftData;
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
      appBar: AppBar(
        title: const Text("Victasoft"),
        centerTitle: true,
      ),
      body: victasoftData != null
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(5, 15, 11, 0),
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
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
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
                          margin: EdgeInsets.fromLTRB(5, 15, 20, 0),
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
                  ),
                  SizedBox(
                    height: 107,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: victasoftData?.data.benner.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                            child: SizedBox(
                              height: 50,
                              width: 300,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Image.network(
                                      victasoftData!
                                          .data.benner[index].bannerImage,
                                    ),
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
                  SizedBox(
                    height: 425,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: victasoftData?.data.allevent.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                            child: SizedBox(
                              height: 50,
                              width: 300,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Image.network(
                                      victasoftData!
                                          .data.allevent[index].eventImage,
                                    ),
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
                  SizedBox(
                    height: 425,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: victasoftData?.data.allevent.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                            child: SizedBox(
                              height: 50,
                              width: 300,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Image.network(
                                      victasoftData!
                                          .data.allevent[index].eventImage,
                                    ),
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
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: victasoftData?.data.eventcategory.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                            child: SizedBox(
                              height: 50,
                              width: 300,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Image.network(
                                      victasoftData!.data.eventcategory[index]
                                          .categoryImage,
                                    ),
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
                  SizedBox(
                    height: 107,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: victasoftData?.data.benner.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                            child: SizedBox(
                              height: 50,
                              width: 300,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Image.network(
                                      victasoftData!
                                          .data.benner[index].bannerImage,
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

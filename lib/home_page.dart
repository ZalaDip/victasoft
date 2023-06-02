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
        title: Text("Victasoft"),
        centerTitle: true,
      ),
      body: victasoftData != null
          ? SingleChildScrollView(
              child: Column(
                children: [
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

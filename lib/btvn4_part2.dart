import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Homework 2'),
      ),
      body: SafeArea(
        child: ListView(
            children: [Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width*2.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width*0.8,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Image.asset(
                                'assets/images/banner_2022_flutter.png',
                              )),
                          Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Lập trình Flutter',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'Thực chiến dự án App',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    'mobile 2022',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 5,
                      color: Colors.green,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width*0.8,
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Lập trình',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Android',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Java + Kotlin',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              child: Image.asset(
                                'assets/images/banner_2022_android.png',
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: 5,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.width*0.8,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Container(
                                  child: Image.asset(
                                    'assets/images/banner-Java-core-03.png',
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Lập trình',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Java cơ bản',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Cho người mới',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      'bắt đầu',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ]),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAppCal();
  }
}

class MyAppCal extends StatefulWidget {
  const MyAppCal({Key? key}) : super(key: key);

  @override
  State<MyAppCal> createState() => _MyAppCalState();
}

class _MyAppCalState extends State<MyAppCal> {
  final soA = TextEditingController();
  final soB = TextEditingController();
  var kq;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator App'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/calculator.png',
                      width: 150,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: SizedBox(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Nhập số A',
                          ),
                          controller: soA,
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: SizedBox(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Nhập số B',
                          ),
                          controller: soB,
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Text(
                      'Kết quả $kq',
                      style: TextStyle(fontSize: 25),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
                            child: SizedBox(
                              width: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    var numberA = double.tryParse(soA.text);
                                    var numberB = double.tryParse(soB.text);
                                    if (numberA == null || numberB == null) {
                                      kq = 'Bạn chưa nhập giá trị';
                                    } else {
                                      kq = '${numberA + numberB}';
                                    }
                                  });
                                },
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                            child: SizedBox(
                              width: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    var numberA = double.tryParse(soA.text);
                                    var numberB = double.tryParse(soB.text);
                                    if (numberA == null || numberB == null) {
                                      kq = 'Bạn chưa nhập giá trị';
                                    } else {
                                      kq = '${numberA - numberB}';
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.green),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                            child: SizedBox(
                              width: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    var numberA = double.tryParse(soA.text);
                                    var numberB = double.tryParse(soB.text);
                                    if (numberA == null || numberB == null) {
                                      kq = 'Bạn chưa nhập giá trị';
                                    } else {
                                      kq = '${numberA * numberB}';
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.red),
                                child: Text(
                                  '*',
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                            child: SizedBox(
                              width: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    var numberA = double.tryParse(soA.text);
                                    var numberB = double.tryParse(soB.text);
                                    if (numberA == null || numberB == null) {
                                      kq = 'Bạn chưa nhập giá trị';
                                    } else {
                                      kq = '${numberA / numberB}';
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange),
                                child: Text(
                                  '/',
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 15,
            ),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.teal,
                size: 30,
              ),
              onPressed: null,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                top: 15,
                right: 15,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.markunread_outlined,
                  color: Colors.teal,
                  size: 30,
                ),
                onPressed: null,
              ),
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    height: constraints.maxHeight * .6,
                                    image: AssetImage('assets/images/port.png'),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Damilola Adekanye',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Mobile Application Developer',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.teal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

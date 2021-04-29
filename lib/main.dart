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
                                SizedBox(height: 7),
                                Text(
                                  'Damilola Adekanye',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'Mobile Application Developer',
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 20,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                                SizedBox(height: 9),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.mark_email_unread_outlined,
                                        color: Colors.pink[200],
                                        size: 30,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.call_outlined,
                                        color: Colors.pink[200],
                                        size: 30,
                                      ),
                                    ),
                                  ],
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Overview',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            'I am an enthusiastic learner, learning how to '
                            'build mobile Applications using Flutter. '
                            'Zuri has provided the platform to make this happen and thanks to the amazing mentors like Abbie, Eternity, Denzel, and others.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                      ),
                      ButtonTheme(
                        minWidth: 300,
                        height: 40,
                        child: RaisedButton(
                          child: Text(
                            'message me',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          textColor: Colors.white,
                          color: Colors.pink[300],
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
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

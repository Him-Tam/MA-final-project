import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'menu.dart';
void main() => runApp(
    DevicePreview(
        builder:(context) =>
            Login()
    )
);
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFACA46),
        ),
        body: Container(
          width: double.infinity,
          color: const Color(0xFFFACA46),
          // This will apply the color to the entire body
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      // Individual container color
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'new-UNSW-logo-png-horizontal-crest.png',
                              width: 250,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // Individual container color
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  "MAJOR INCIDENT",
                                  style: TextStyle(
                                    fontSize: 39,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "RESPONSE APPLICATION",
                                  style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'inputemail@pdiddy.com',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        enabled: false, // Disabled to make it unclickable
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '***************',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        enabled: false, // Disabled to make it unclickable
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        return Container(
                          margin: EdgeInsets.all(20),
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Menu()), // Navigate to Menu
                              );
                            },

                            child: Center(

                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    ),
                    Container(
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.black),
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

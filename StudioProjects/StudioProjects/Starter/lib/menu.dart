import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:starter/dashboard.dart';
import 'package:starter/LoginMRT.dart';

void main() => runApp(
    DevicePreview(
        builder:(context) =>
            Menu()
    )
);

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            "Menu",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
                fontSize: 16,
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: const Color(0xFFFACA46), // Set the Drawer icon color to white
          ),
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()), // Navigate to Menu
                  );
                },
                child: Center(
                  child: Text(
                    "LOGOUT",
                    style: TextStyle(
                      color: const Color(0xFFFACA46),
                      fontSize: 14,
                    ),
                  ),
                )
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // Space between the two boxes
                children: [
                  // First box
                  Container(
                    width: (MediaQuery.of(context).size.width - 55) / 2,
                    // Half of the available width with padding
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.people_outlined, color: Colors.grey, size: 80),
                        SizedBox(height: 10),
                        Text(
                          'Users',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),

                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => dashboard()), // Navigate to Menu
                      );
                    },
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 55) / 2,
                      // Half of the available width with padding
                      height: 170,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFACA46),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.content_paste_sharp, color: Colors.black, size: 80),
                          SizedBox(height: 10),
                          Text(
                            'Contact Lists',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),

                    ),
                  )



                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // Space between the two boxes
                children: [
                  // First box
                  Container(
                    width: (MediaQuery.of(context).size.width - 55) / 2,
                    // Half of the available width with padding
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.groups_3_outlined, color: Colors.grey, size: 80),
                        SizedBox(height: 10),
                        Text(
                          'Groups and\nassociations',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),

                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width - 55) / 2,
                    // Half of the available width with padding
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.auto_stories, color: Colors.grey, size: 80),
                        SizedBox(height: 10),
                        Text(
                          'Documents',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),

                  ),


                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // Space between the two boxes
                children: [
                  // First box
                  Container(
                    width: (MediaQuery.of(context).size.width - 55) / 2,
                    // Half of the available width with padding
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.fact_check_outlined, color: Colors.grey, size: 80),
                        SizedBox(height: 10),
                        Text(
                          'Incident types and\nresponse guidelines',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 16 ),
                        ),
                      ],
                    ),

                  ),


                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}

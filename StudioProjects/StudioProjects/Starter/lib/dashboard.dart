import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'LoginMRT.dart';
void main() => runApp(DevicePreview(builder: (context) => dashboard()));

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            "MIRT Chair dashboard",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(
            color:
                const Color(0xFFFACA46), // Set the Drawer icon color to white
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
              height: 30,
              width: double.infinity,
              color: Colors.grey.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ACTIVE MIRT',
                    style: TextStyle(
                      color: Colors.black,

                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFFACA46),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.fact_check_outlined,
                      color: Colors.black, size: 20),
                  SizedBox(height: 5),
                  Text(
                    ' MIRT CHAIR ACTIONS',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
            Container(
              //padding: EdgeInsets.only(left: 10, bottom: 10),
              margin: EdgeInsets.only(top: 15),
              width: double.infinity,
              height: 85,
              decoration: BoxDecoration(
                color: Colors.yellow[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // controls the position of the shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        '   Fire Event',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '11:30   10/10/2016',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            // Set the radius of the circle
                            backgroundColor: Colors.amber,
                            // Set the background color of the circle
                            child: Icon(
                              Icons.notifications_none,
                              // Set the icon to a person icon
                              size: 15, // Set the icon size
                              color: Colors.white, // Set the icon color
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '15 notified',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Icon(Icons.keyboard_arrow_down_sharp,
                              color: Colors.black),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_pin,
                          color: Colors.yellow.shade800, size: 30),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Building #7 IT department',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Primary Emergency Operation Centre',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ],
                      ),
                      Padding(
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      Text(
                                        'CLOSE MIRT',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.only(left: 30, top: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          radius: 20,
                          // Set the radius of the circle
                          backgroundColor: Colors.amber,
                          // Set the background color of the circle
                          child: Icon(
                            Icons.person_outline,
                            // Set the icon to a person icon
                            size: 25, // Set the icon size
                            color: Colors.white, // Set the icon color
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Did not respond in time - declined',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 100),
                            // Move the icon 10 pixels to the right
                            child: Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: 30, // Set the icon size
                              color:
                                  Colors.black, // Optional: set the icon color
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black12, // Set the color of the divider
              thickness: 1, // Set the thickness of the divider
              height: 1, // Space allocated for the divider
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          radius: 20,
                          // Set the radius of the circle
                          backgroundColor: Colors.amber,
                          // Set the background color of the circle
                          child: Icon(
                            Icons.person_outline,
                            // Set the icon to a person icon
                            size: 25, // Set the icon size
                            color: Colors.white, // Set the icon color
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Michael Lockwood',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Yet to acknowledge receipt',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Text(
                            'Notified at 11:30 am, 10/10/16',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 3),
                            // Move the icon 10 pixels to the right
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              size: 30, // Set the icon size
                              color:
                                  Colors.black, // Optional: set the icon color
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black12, // Set the color of the divider
              thickness: 1, // Set the thickness of the divider
              height: 1, // Space allocated for the divider
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          radius: 20,
                          // Set the radius of the circle
                          backgroundColor: Colors.amber,
                          // Set the background color of the circle
                          child: Icon(
                            Icons.person_outline,
                            // Set the icon to a person icon
                            size: 25, // Set the icon size
                            color: Colors.white, // Set the icon color
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Yet to acknowledge receipt',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Text(
                            'Notified at 11:30 am, 10/10/16',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 60),
                            // Move the icon 10 pixels to the right
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              size: 30, // Set the icon size
                              color:
                                  Colors.black, // Optional: set the icon color
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black12, // Set the color of the divider
              thickness: 1, // Set the thickness of the divider
              height: 1, // Space allocated for the divider
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          radius: 20,
                          // Set the radius of the circle
                          backgroundColor: Colors.amber,
                          // Set the background color of the circle
                          child: Icon(
                            Icons.person_outline,
                            // Set the icon to a person icon
                            size: 25, // Set the icon size
                            color: Colors.white, // Set the icon color
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Yet to acknowledge receipt',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Text(
                            'Notified at 11:30 am, 10/10/16',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 60),
                            // Move the icon 10 pixels to the right
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              size: 30, // Set the icon size
                              color:
                                  Colors.black, // Optional: set the icon color
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black12, // Set the color of the divider
              thickness: 1, // Set the thickness of the divider
              height: 1, // Space allocated for the divider
            ),
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}

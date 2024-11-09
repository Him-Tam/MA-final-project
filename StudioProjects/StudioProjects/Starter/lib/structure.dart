import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    DevicePreview(
        builder:(context) =>
            MyApp()
    )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //centerTitle: true,
          title: const Text("P-DIDDY PARTY",
              style: TextStyle(
                color: Colors.white,
              )),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          // default is 56
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.chat)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.notifications)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.qr_code)),
          ],
          toolbarHeight: 70,
          // default is 56
          toolbarOpacity: 1,
          backgroundColor: Colors.red,
          actionsIconTheme: IconThemeData(color: Colors.white, size: 25),
          elevation: 100,
        ),
        drawer: const Drawer(
            child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Tam4r"),
              accountEmail: Text("Akuiplork168@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log out"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About app."),
            ),
          ],
        )),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              // First row of horizontally scrollable images
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.network(
                        "https://4kwallpapers.com/images/wallpapers/fast-x-2023-movies-8k-5k-1920x1080-11504.jpg",
                        width: 500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.network(
                        "https://stat4.bollywoodhungama.in/wp-content/uploads/2016/03/68043108.jpg",
                        width: 465,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.network(
                        "https://osn-artwork.anghcdn.co/landscape_tt_PR649823/MV016557_LTT.jpg",
                        width: 420,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.network(
                        "https://img3.wallspic.com/crops/2/8/8/4/6/164882/164882-joker-joker_movie_poster-poster-film_poster-warner_bros_pictures-1920x1080.jpg",
                        width: 470,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10), // Spacer between rows

              // Second row of horizontally scrollable images
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.network(
                        "https://m.media-amazon.com/images/I/81KE5DERc5L._AC_UF894,1000_QL80_.jpg",
                        width: 500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.network(
                        "https://m.media-amazon.com/images/I/81qDDDx3oML._AC_UF894,1000_QL80_.jpg",
                        width: 465,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.network(
                        "https://m.media-amazon.com/images/M/MV5BMTUyNzgxNjg2M15BMl5BanBnXkFtZTgwMTY1NDI1NjE@._V1_.jpg",
                        width: 420,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.network(
                        "https://m.media-amazon.com/images/M/MV5BZDY0YzI0OTctYjVhYy00MTVhLWE0NTgtYTRmYTBmOTE3YTViXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_FMjpg_UX1000_.jpg",
                        width: 470,
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

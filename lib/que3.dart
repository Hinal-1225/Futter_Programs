/*Create a Flutter application in which:
- three images from local drive are displayed in a row and
- two images from Internet are displayed in a column.
-----------------------------------------------------------------------------------*/


import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    Image i1 = Image.asset("img1.PNG",scale:10);
    Image i2 = Image.asset("img2.PNG",scale:10);
    Image i3 = Image.asset("img3.jpg",scale:10);
    Image i4 = Image.network("https://cdn.onlinewebfonts.com/svg/download_275971.png",scale:15) ;
    Image i5 = Image.network("https://cdn.onlinewebfonts.com/svg/download_275971.png",scale:15) ;
    Image i6 = Image.network("https://cdn.onlinewebfonts.com/svg/download_275971.png",scale:15) ;

    Row r = Row(children: [i1,i2,i3],);
    Column c = Column(children: [i4,i5,i6],);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Images (Question 3)"),
          ),
          body: Column(children: [r,c],)
      ),
    );
  }


}
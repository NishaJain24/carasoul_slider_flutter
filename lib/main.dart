import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  final urlImages = [
    "assets/pic1.jpeg",
    "assets/pic3.jpg",
    "assets/pic4.jpg",
    "assets/pic5.jpg",
    "assets/pic6.jpg",
  ];

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carasoul Slider"),
        centerTitle: true,
      ),
      body: Center(
        child: CarouselSlider.builder(
            itemCount: urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return buildImage(urlImage, index);
            },
            options: CarouselOptions(
              height: 400,
              autoPlay: true,
              // reverse: true,
              autoPlayInterval: Duration(seconds: 2),
              // viewportFraction: 1,
              enlargeCenterPage: true,
              // pageSnapping: false,
                enableInfiniteScroll: false,
              enlargeStrategy: CenterPageEnlargeStrategy.height
            )),
      ),
    );
  }
}

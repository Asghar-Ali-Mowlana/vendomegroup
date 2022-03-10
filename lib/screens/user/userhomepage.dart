import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendomegroup/screens/user/userhotelbooking.dart';
import 'package:vendomegroup/widgets/header.dart';
import 'package:vendomegroup/widgets/usernavigationdrawer.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  _UserHomePageState createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  var _scaffoldState = new GlobalKey<ScaffoldState>();
  CarouselController _carouselController = CarouselController();
  //List<String> imageURLs = ["assets/images/promo/promo1.jpeg", "http://cdn.srilanka-promotions.com/wp-content/uploads/2012/12/Fashion-Bug-21-Dec-2012.jpg", "https://www.swaart.com/wp-content/uploads/2021/01/Swaart-Main.jpg"];

  List imageList = [
    'assets/images/promo/promo1.jpeg',
    'assets/images/promo/promo2.jpeg',
    'assets/images/promo/promo3.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      key: _scaffoldState,

      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      //   iconTheme: IconThemeData(color: Color(0xFFdb9e1f)),
      // ),

      endDrawer: new UserNavigationDrawer(),

      backgroundColor: Color(0xFF000000),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 90.0, bottom: 0.0),
                  child: CarouselSlider(
                    items: imageList
                        .map((imageList) => Container(
                              width: double.infinity,
                              child: Center(
                                  child: Image(
                                image: AssetImage(imageList),
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 300.0,
                              )),
                            ))
                        .toList(),
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      height: 250.0,
                      viewportFraction: 1.0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40.0, bottom: 0.0),
                  child: Text(
                    "What would you like to order, MOHAMED?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                  child: Text(
                    "Explore",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      "Delivery",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 180.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    children: <Widget>[
                      //Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg', height: 30.0, ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 10.0, right: 0.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 120.0,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color(0xFF262626),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Icon(
                                      Icons.apartment_outlined,
                                      color: Color(0xFFdb9e1f),
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Hotels & Apartments",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 10.0, right: 0.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 120.0,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color(0xFF262626),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Icon(
                                      Icons.directions_car_outlined,
                                      color: Color(0xFFdb9e1f),
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Cars",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 10.0, right: 2.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 120.0,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color(0xFF262626),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Icon(
                                      Icons.directions_boat,
                                      color: Color(0xFFdb9e1f),
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Yacht",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      "Booking",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 180.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    children: <Widget>[
                      //Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg', height: 30.0, ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 10.0, right: 0.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          UserHotelBooking()));
                            },
                            child: Container(
                              height: 120.0,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Color(0xFF262626),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12.0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Icon(
                                        Icons.apartment_outlined,
                                        color: Color(0xFFdb9e1f),
                                        size: 50.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Hotels & Apartments",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 10.0, right: 0.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 120.0,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color(0xFF262626),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Icon(
                                      Icons.directions_car_outlined,
                                      color: Color(0xFFdb9e1f),
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Cars",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 10.0, right: 2.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 120.0,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color(0xFF262626),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Icon(
                                      Icons.directions_boat,
                                      color: Color(0xFFdb9e1f),
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Yacht",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      "Sales",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 180.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    children: <Widget>[
                      //Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg', height: 30.0, ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 10.0, right: 0.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 120.0,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color(0xFF262626),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Icon(
                                      Icons.apartment_outlined,
                                      color: Color(0xFFdb9e1f),
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Hotels & Apartments",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 10.0, right: 0.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 120.0,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color(0xFF262626),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Icon(
                                      Icons.directions_car_outlined,
                                      color: Color(0xFFdb9e1f),
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Cars",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 10.0, right: 2.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 120.0,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color(0xFF262626),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Icon(
                                      Icons.directions_boat,
                                      color: Color(0xFFdb9e1f),
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Yacht",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              child: Container(child: VendomeHeader(drawer: _scaffoldState))),
        ],
      ),
    ));
  }
}

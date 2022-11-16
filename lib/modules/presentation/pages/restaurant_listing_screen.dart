import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RestaurantListingScreen extends StatefulWidget {
  const RestaurantListingScreen({super.key});

  @override
  State<RestaurantListingScreen> createState() =>
      _RestaurantListingScreenState();
}

class _RestaurantListingScreenState extends State<RestaurantListingScreen> {
  var _searchFieldController = TextEditingController();

  // RESTARUANT DATA HERE
  final _restaurant = [1, 2, 3, 4, 5];

  // RESTARURANT CARD
  Widget restCard = Stack(
    children: [
      Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              // RESTRAURANT IMAGE
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://www.medoc-atlantique.com/wp-content/uploads/2019/02/restaurant-1600x900.jpg'),
              ),
            ),

            // RESTRAURANT OVERVIEW
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: Color.fromARGB(204, 222, 222, 222),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "The WorkShop Eatery",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "12 orders",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '32%',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "1524 earnings",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '14%',
                              style: TextStyle(color: Colors.red, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "12 new reviews",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),

      // RESTRAURANT STATUS ------
      Positioned(
        top: 15,
        left: 15,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.green,
          ),
          child: const Text('OPEN'),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Fodery Adminstration",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.red,
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo7uaIBDsEnqc-9Kfo-6PCr57tOEL1VvuNjg&usqp=CAU'),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SEARCH BAR -------------------
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        child: TextField(
                          controller: _searchFieldController,
                          decoration: InputDecoration(
                            hintText: 'Search',
                            filled: true,
                            fillColor: Color.fromARGB(204, 222, 222, 222),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.filter),
                    ),
                  ]),
            ),
            ..._restaurant.map((item) => restCard).toList()
          ],
        ),
      ),
    );
  }
}

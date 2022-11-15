import 'package:flutter/material.dart';
import 'package:fodery_admin/modules/presentation/pages/restaurant_listing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fodery Administration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RestaurantListingScreen(),
    );
  }
}

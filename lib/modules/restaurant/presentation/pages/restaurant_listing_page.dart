import 'package:flutter/material.dart';
import 'package:fodery_admin/modules/home/presentation/widgets/top_bar_widget.dart';
import 'package:fodery_admin/modules/restaurant/presentation/widgets/table_item_row.dart';
import 'package:fodery_admin/modules/restaurant/presentation/widgets/table_title_row.dart';

class RestaurantListingPage extends StatefulWidget {
  const RestaurantListingPage({super.key});

  @override
  State<RestaurantListingPage> createState() => _RestaurantListingPageState();
}

class _RestaurantListingPageState extends State<RestaurantListingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBarWidget(
          title: "Restaurants",
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(0.5))),
                child: Column(
                  children: [
                    TableTitleRowWidget(),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 20,
                        itemBuilder: (context, int) {
                          return const TableItemRowWidget();
                        })
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

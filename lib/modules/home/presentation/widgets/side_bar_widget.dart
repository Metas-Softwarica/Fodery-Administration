import 'package:flutter/material.dart';
import 'package:fodery_admin/modules/home/presentation/widgets/side_bar_item_widget.dart';

import '../../../core/routes/app_routes.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({super.key});

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(color: Color(0xff32343F)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color(0xff494B5C),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(42)),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Sujan Pradhan",
                              style: TextStyle(
                                  fontFamily: "ManropeRegular",
                                  color: Colors.white)),
                          SizedBox(
                            width: 8,
                          ),
                          Text("Admin",
                              style: TextStyle(
                                  fontFamily: "ManropeBold",
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                            color: const Color(0xff32343F),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SideBarItemWidget(text: "Dashboard", route: DASHBOARD_ROUTE),
            const SideBarItemWidget(text: "Analytics", route: ANALYTICS_ROUTE),
            const SizedBox(
              height: 12,
            ),
            const Text("Restaurant Management",
                style: TextStyle(
                    fontFamily: "ManropeRegular", color: Colors.grey)),
            const SizedBox(
              height: 12,
            ),
            const SideBarItemWidget(
                text: "Add New Restaurant",
                route: "/$RESTAURANT_SEGMENT/$ADD_NEW_SEGMENT"),
            const SideBarItemWidget(
                text: "Restaurant List",
                route: "/$RESTAURANT_SEGMENT/$LIST_SEGMENT"),
            const SizedBox(
              height: 12,
            ),
            const Text("Food Management",
                style: TextStyle(
                    fontFamily: "ManropeRegular", color: Colors.grey)),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}

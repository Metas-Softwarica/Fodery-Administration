import 'package:flutter/material.dart';

class TableTitleRowWidget extends StatelessWidget {
  const TableTitleRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        color: Colors.grey.shade200,
      ),
      height: 40,
      child: Center(
        child: Row(
          children: const [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "SN",
                  style: TextStyle(fontFamily: "ManropeBold"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  "Restaurant Information",
                  style: TextStyle(fontFamily: "ManropeBold"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  "Owner Information",
                  style: TextStyle(fontFamily: "ManropeBold"),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "Status",
                  style: TextStyle(fontFamily: "ManropeBold"),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "Actions",
                  style: TextStyle(fontFamily: "ManropeBold"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

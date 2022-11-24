import 'package:flutter/material.dart';

class CardTitleWidget extends StatelessWidget {
  final String title;
  const CardTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(color: Colors.grey.withOpacity(0.5), width: 1))),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontFamily: "ManropeBold", fontSize: 16),
          )
        ],
      ),
    );
  }
}

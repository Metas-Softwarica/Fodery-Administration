import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  final String title;
  const TopBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(color: Colors.grey.withOpacity(0.5), width: 1))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,
              style: const TextStyle(fontFamily: "ManropeBold", fontSize: 20))
        ],
      ),
    );
  }
}

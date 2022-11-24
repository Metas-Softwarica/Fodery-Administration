import 'package:flutter/material.dart';
import 'package:fodery_admin/modules/home/presentation/widgets/side_bar_widget.dart';

class HomePage extends StatefulWidget {
  final Widget child;
  const HomePage({super.key, required this.child});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [const SideBarWidget(), Expanded(child: widget.child)],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

class SideBarItemWidget extends StatefulWidget {
  final String text;
  final String route;
  final Function()? onTap;
  const SideBarItemWidget(
      {super.key, required this.text, required this.route, this.onTap});

  @override
  State<SideBarItemWidget> createState() => _SideBarItemWidgetState();
}

class _SideBarItemWidgetState extends State<SideBarItemWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      onTap: widget.onTap ?? () => context.vRouter.to(widget.route),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: (context.vRouter.path.startsWith(widget.route))
                ? const Color(0xff494B5C)
                : null,
            borderRadius: BorderRadius.circular(6)),
        child: Row(
          children: [
            const Icon(Icons.do_not_disturb_alt, color: Colors.grey, size: 18),
            const SizedBox(
              width: 8,
            ),
            Text(widget.text,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: (context.vRouter.path.startsWith(widget.route))
                        ? "ManropeBold"
                        : "ManropeRegular",
                    color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

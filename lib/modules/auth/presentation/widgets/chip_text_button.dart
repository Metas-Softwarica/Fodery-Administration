import 'package:flutter/material.dart';

class ChipTextButton extends StatefulWidget {
  final String prefixText;
  final String suffixText;
  final Function() onTap;
  const ChipTextButton(
      {super.key,
      required this.prefixText,
      required this.suffixText,
      required this.onTap});

  @override
  State<ChipTextButton> createState() => _ChipTextButtonState();
}

class _ChipTextButtonState extends State<ChipTextButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: widget.prefixText,
                style: const TextStyle(
                    color: Colors.grey, fontFamily: "ManropeRegular")),
            TextSpan(
                text: widget.suffixText,
                style: const TextStyle(
                    color: Colors.white, fontFamily: "ManropeRegular"))
          ])),
        ),
      ),
    );
  }
}

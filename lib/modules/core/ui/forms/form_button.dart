import 'package:flutter/material.dart';

class FormButton extends StatefulWidget {
  final String? text;
  final Function()? onTap;
  final Color color;
  final Color textColor;
  final double maxWidth;
  const FormButton(
      {super.key,
      this.maxWidth = 200,
      this.text,
      this.onTap,
      this.textColor = Colors.white,
      this.color = const Color(0xff32343F)});

  @override
  State<FormButton> createState() => _FormButtonState();
}

class _FormButtonState extends State<FormButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.color,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: widget.maxWidth,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 14),
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              widget.text ?? "",
              style: TextStyle(
                  fontFamily: "ManropeBold",
                  fontSize: 14,
                  color: widget.textColor),
            ),
          ),
        ),
      ),
    );
  }
}

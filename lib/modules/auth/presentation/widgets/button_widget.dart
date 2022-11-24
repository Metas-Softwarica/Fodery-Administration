import 'package:flutter/material.dart';

class AuthButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  const AuthButton({super.key, required this.text, required this.onTap});

  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff32343F),
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontFamily: "ManropeRegular"),
            ),
          ),
        ),
      ),
    );
  }
}

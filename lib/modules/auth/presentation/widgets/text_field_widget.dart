import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String labelText;
  final bool isObscureText;
  final String? Function(String?)? validator;
  const TextFieldWidget(
      {super.key,
      required this.labelText,
      this.isObscureText = false,
      this.validator});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late bool isObscureText;

  @override
  void initState() {
    isObscureText = widget.isObscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 14, fontFamily: "ManropeRegular"),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(14),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(width: 0, color: Colors.white)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(width: 0, color: Colors.white)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(width: 0, color: Colors.white)),
          fillColor: const Color(0xffEFEFEF),
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          isCollapsed: true,
          alignLabelWithHint: true,
          suffixIcon: widget.isObscureText
              ? InkWell(
                  onTap: () {
                    setState(() {
                      isObscureText = !isObscureText;
                    });
                  },
                  child: Icon(
                      !isObscureText ? Icons.visibility : Icons.visibility_off),
                )
              : const SizedBox()),
      obscureText: isObscureText,
      validator: widget.validator,
    );
  }
}

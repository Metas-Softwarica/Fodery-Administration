import 'package:flutter/material.dart';

class FormTextField extends StatefulWidget {
  final String? label;
  final bool isMultiline;
  final String? hintText;
  const FormTextField(
      {super.key, this.label, this.hintText, this.isMultiline = false});

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text(
                widget.label!,
                style: const TextStyle(fontFamily: "ManropeRegular"),
              ),
            ),
          Container(
            constraints: const BoxConstraints(maxHeight: 180),
            child: TextField(
              style:
                  const TextStyle(fontSize: 14, fontFamily: "ManropeRegular"),
              // keyboardType: TextInputType.multiline,
              maxLines: widget.isMultiline ? null : 1,
              minLines: widget.isMultiline ? 5 : null,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: const TextStyle(fontFamily: "ManropeRegular"),
                isDense: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        BorderSide(width: 1, color: Colors.grey.shade400)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        BorderSide(width: 1, color: Colors.grey.shade300)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        BorderSide(width: 1, color: Colors.grey.shade300)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

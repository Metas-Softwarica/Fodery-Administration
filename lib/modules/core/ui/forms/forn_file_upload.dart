import 'package:flutter/material.dart';
import 'package:fodery_admin/modules/core/ui/forms/form_button.dart';

class FormFileUpload extends StatefulWidget {
  final String? label;
  const FormFileUpload({super.key, this.label});

  @override
  State<FormFileUpload> createState() => _FormFileUploadState();
}

class _FormFileUploadState extends State<FormFileUpload> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
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
            margin: const EdgeInsets.symmetric(vertical: 8),
            height: 180,
            width: 320,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    image: AssetImage("images/no-image.png"),
                    fit: BoxFit.cover)),
          ),
          const FormButton(
            text: "Choose file",
            maxWidth: 320,
          )
        ],
      ),
    );
  }
}

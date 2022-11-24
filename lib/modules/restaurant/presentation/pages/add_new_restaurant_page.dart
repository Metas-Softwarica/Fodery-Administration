import 'package:flutter/material.dart';
import 'package:fodery_admin/modules/core/ui/forms/form_button.dart';
import 'package:fodery_admin/modules/core/ui/forms/form_textfiel.dart';
import 'package:fodery_admin/modules/core/ui/forms/forn_file_upload.dart';
import 'package:fodery_admin/modules/restaurant/presentation/widgets/card_title_widget.dart';
import 'package:fodery_admin/modules/restaurant/presentation/widgets/card_widget.dart';

import '../../../home/presentation/widgets/top_bar_widget.dart';

class AddNewRestaurantPage extends StatefulWidget {
  const AddNewRestaurantPage({super.key});

  @override
  State<AddNewRestaurantPage> createState() => _AddNewRestaurantPageState();
}

class _AddNewRestaurantPageState extends State<AddNewRestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBarWidget(
          title: "Add New Restaurant",
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    CardWidget(children: [
                      const CardTitleWidget(
                        title: "Restaurant Information",
                      ),
                      Row(
                        children: const [
                          Expanded(
                              flex: 1,
                              child: FormTextField(
                                label: "Restaurant Name",
                                hintText: "Ex: Mc Donald",
                              )),
                          Expanded(
                              flex: 1,
                              child: FormTextField(
                                label: "Restaurant Address",
                                hintText: "EX: New York 834 DST Street",
                              )),
                          Expanded(
                              flex: 1,
                              child: FormTextField(
                                label: "VAT/TAX (%)",
                                hintText: "Ex: 13%",
                              ))
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                              child: FormTextField(
                            label: "Description",
                            isMultiline: true,
                          ))
                        ],
                      ),
                      const FormFileUpload(
                        label: "Restaurant Logo",
                      )
                    ]),
                    const SizedBox(
                      height: 14,
                    ),
                    CardWidget(children: [
                      const CardTitleWidget(
                        title: "Owner Information",
                      ),
                      Row(
                        children: const [
                          Expanded(
                              flex: 1,
                              child: FormTextField(
                                label: "First Name",
                                hintText: "Ex: Alex",
                              )),
                          Expanded(
                              flex: 1,
                              child: FormTextField(
                                label: "Last Name",
                                hintText: "EX: Doe",
                              )),
                          Expanded(
                              flex: 1,
                              child: FormTextField(
                                label: "Phone",
                                hintText: "Ex: +9XXX-XXX-XXXXXX",
                              ))
                        ],
                      ),
                    ]),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FormButton(
                          text: "Reset",
                          textColor: Colors.black,
                          maxWidth: 80,
                          color: Colors.grey.shade200,
                          onTap: () {},
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        FormButton(
                          text: "Save Information",
                          maxWidth: 240,
                          onTap: () {},
                        )
                      ],
                    )
                  ],
                )),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class TableItemRowWidget extends StatelessWidget {
  const TableItemRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey.shade200, width: 1))),
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Center(
        child: Row(
          children: [
            const Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "1",
                  style: TextStyle(fontFamily: "ManropeRegular"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Italian Fast Food",
                      style: TextStyle(fontFamily: "ManropeRegular"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  children: const [
                    Text(
                      "Alex Brooker",
                      style: TextStyle(fontFamily: "ManropeRegular"),
                    ),
                    Text(
                      "9869718191",
                      style: TextStyle(fontFamily: "ManropeRegular"),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "Status",
                  style: TextStyle(fontFamily: "ManropeBold"),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.red, width: 1)),
                      child: const Icon(
                        Icons.edit,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.blue, width: 1)),
                      child: const Icon(
                        Icons.visibility,
                      ),
                    ),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}

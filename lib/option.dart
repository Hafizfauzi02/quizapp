import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final String option;
  const Options({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 240,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 3, color: Colors.blue)),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    option,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Radio(value: option, groupValue: 2, onChanged: (val) {})
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class kategori extends StatelessWidget {
  final String iconimage;
  final String buttonText;

  const kategori(
      {super.key, required this.iconimage, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset(iconimage),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}

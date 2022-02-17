import 'dart:io';

import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.brand,
    required this.licenceNumber,
    required this.color,
    required this.year,
    required this.path,
  }) : super(key: key);
  final String brand;
  final String licenceNumber;
  final String color;
  final DateTime year;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          child:  Image.file(
          File(path),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        ),
        Column(
          children: [
            Text(brand),
            Text(licenceNumber),
            Text(color),
            Text(year.toString(),),
            ],
        )
      ],
    );
  }
}

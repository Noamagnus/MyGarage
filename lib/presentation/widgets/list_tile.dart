import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/widget_functions.dart';



class CustomListTile2 extends StatelessWidget {
  const CustomListTile2({
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
    return Container(
      height: 130,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: AppColors.listTileBackgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.listTileBorderColor,
          width: 0.5,
        ),
      ),
      // If padding is null then default padding is 8
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: path.isNotEmpty?Image.file(
                File(path),
                fit: BoxFit.cover,
                width: double.infinity,
              ):Container(),
            ),
          ),
          Expanded(
            flex: 55,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 25,
                    child: Text(
                      brand,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.listTileBrandTextColor,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 17,
                    child: Text(
                      licenceNumber,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.listTileThinTextColor,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 18,
                    child: Text(
                      '$year',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.listTileThinTextColor,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 50,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text('test'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/widget_functions.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.brand,
    required this.licenceNumber,
    required this.description,
    required this.year,
    required this.path,
    required this.isRegistered,
  }) : super(key: key);
  final String brand;
  final String licenceNumber;
  final String description;
  final DateTime? year;
  final String path;
  final bool isRegistered;

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
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 45,
            child: Container(
              height: 110,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: path.isNotEmpty
                    ? Image.file(
                        File(path),
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )
                    : Container(),
              ),
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
                   Expanded(
                    flex: 50,
                    child: Align(alignment: Alignment.bottomRight, child: isRegistered? SmallRoundedContainer(text: 'Registered',):SmallRoundedContainer(text:'Not Registered')),
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

class SmallRoundedContainer extends StatelessWidget {
  const SmallRoundedContainer({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: size,
      // height: size,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: AppColors.screenBackgroundColor,
        borderRadius: BorderRadius.circular(20),
        //  border: Border.all(
        //     color: AppColors.iconButtonBorderColor,
        //     width: 0.5,
        //   ),  // to make it circle
      ),
      // ignore: prefer_const_constructors
      child: Text(
        text,
        // ignore: prefer_const_constructors
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: AppColors.textTitleColor,
        ),
      ),
    );
  }
}

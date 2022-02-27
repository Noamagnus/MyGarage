import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:my_garage/presentation/widgets/small_rounded_container.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/dimensions.dart';
import 'package:my_garage/utils/widget_functions.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.brand,
    required this.licenceNumber,
    required this.description,
    required this.year,
    required this.path,
    required this.isServiced,
    required this.listTileContainerHeight,
  }) : super(key: key);
  final String brand;
  final String licenceNumber;
  final String description;
  final DateTime year;
  final String path;
  final bool isServiced;
  final double listTileContainerHeight;

  @override
  Widget build(BuildContext context) {
    final selectedYear = DateFormat('yyyy').format(year);
    return Container(
      height: listTileContainerHeight,
      margin: EdgeInsets.symmetric(
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
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 45,
            child: SizedBox(
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
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 25,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 6,
                          color: AppColors.blueColor,
                        ),
                        addHorizontalSpace(8),
                        Text(
                          brand,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: AppColors.grey700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 17,
                    child: Text(
                      licenceNumber,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.listTileThinTextColor,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 18,
                    child: Text(
                      selectedYear,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.listTileThinTextColor,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 50,
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: isServiced
                            ? const SmallRoundedContainer(
                                text: 'Serviced',
                              )
                            : const SmallRoundedContainer(text: 'Not Serviced')),
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

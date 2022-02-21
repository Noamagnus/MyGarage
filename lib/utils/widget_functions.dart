import 'package:flutter/material.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}


Future<dynamic> customShowDialog(String message, BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Back'),
        )
      ],
    ),
  );
}
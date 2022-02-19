import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as pth;
import 'package:path_provider/path_provider.dart' as syspaths;

import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final _picker = ImagePicker();
// This function should have two steps
// 1. To take the picture
// 2. To save the picture to database
  Future<String?> takePicture() async {
    //We're getting cross-platforme file
    try {
      final XFile? imageFile = await _picker.pickImage(source: ImageSource.camera, maxWidth: 600);
      if (imageFile == null) {
        return null;
      }
      // This is path of temporary cross-platform file
      final String pickedImageFile = imageFile.path;

      //This is giving us device specific directory where we can store our files
      final Directory appDir = await syspaths.getApplicationDocumentsDirectory();
      //Using path package to get path from picked image
      final String fileName = pth.basename(pickedImageFile);

      final savedImage = await File(imageFile.path).copy('${appDir.path}/$fileName');
      //some function that is passed to statefull widget constructor
      // onSelectedImage(savedImage);
      return savedImage.path;
    } on PlatformException catch (e) {
      print('Failed to pick YO image $e');
    }
  }

  Future<String?> pickImageFromGallery() async {
    //We're getting cross-platforme file
    try {
      final XFile? imageFile = await _picker.pickImage(source: ImageSource.gallery, maxWidth: 600);
      if (imageFile == null) {
        return null;
      }
      // This is path of temporary cross-platform file
      final String pickedImageFile = imageFile.path;

      //This is giving us device specific directory where we can store our files
      final Directory appDir = await syspaths.getApplicationDocumentsDirectory();
      //Using path package to get path from picked image
      final String fileName = pth.basename(pickedImageFile);

      final savedImage = await File(imageFile.path).copy('${appDir.path}/$fileName');
      //some function that is passed to statefull widget constructor
      // onSelectedImage(savedImage);
      return savedImage.path;
    } on PlatformException catch (e) {
      print('Failed to pick image $e');
    }
  }
}

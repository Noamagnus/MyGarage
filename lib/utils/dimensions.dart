import 'dart:ui';

var pixelRatio = window.devicePixelRatio;

//Size in physical pixels
var physicalScreenSize = window.physicalSize;
var physicalWidth = physicalScreenSize.width;
var physicalHeight = physicalScreenSize.height;

//Size in logical pixels
var logicalScreenSize = window.physicalSize / pixelRatio;
var logicalWidth = logicalScreenSize.width;
var logicalHeight = logicalScreenSize.height;

//Padding in physical pixels
var padding = window.padding;

//Safe area paddings in logical pixels
var paddingLeft = window.padding.left / window.devicePixelRatio;
var paddingRight = window.padding.right / window.devicePixelRatio;
var paddingTop = window.padding.top / window.devicePixelRatio;
var paddingBottom = window.padding.bottom / window.devicePixelRatio;

//Safe area in logical pixels
var safeWidth = logicalWidth - paddingLeft - paddingRight;
var safeHeight = logicalHeight - paddingTop - paddingBottom;

class Dimensions {
  // My screen is 640 logical pixels
  static double screenHeight = logicalHeight; //844
  static double screenWidth = logicalWidth;

  static double pageView = logicalHeight / 2.64;
  static double pageViewContainer = logicalHeight / 3.84;
  static double pageViewTextContainer = logicalHeight / 7.03;
  static double actionScreenImage = logicalHeight / 2.56; //640/250

// ActionScreenDimensions
  static double imageActionScreen = logicalHeight / 3;

// Dynamic height
  static double height5 = logicalHeight / 128; //640/5
  static double height10 = logicalHeight / 64; //640/10
  static double height15 = logicalHeight / 42.66;
  static double height20 = logicalHeight / 32;
  static double height25 = logicalHeight / 25.6;
  static double height30 = logicalHeight / 21.33;
  static double height35 = logicalHeight / 18.25;
  static double height40 = logicalHeight / 16;
  static double height45 = logicalHeight / 14.22;
  static double height50 = logicalHeight / 12.8;
// Dynamic width
  static double width5 = logicalHeight / 128; //640/5
  static double width10 = logicalHeight / 64; //640/10
  static double width15 = logicalHeight / 42.66;
  static double width20 = logicalHeight / 32;
  static double width25 = logicalHeight / 25.6;
  static double width30 = logicalHeight / 21.33;
  static double width35 = logicalHeight / 18.25;
  static double width40 = logicalHeight / 16;
  static double width45 = logicalHeight / 14.22;
  static double width50 = logicalHeight / 12.8;

// Dynamic font size
  static double font30 = logicalHeight / 21.33;
  static double font26 = logicalHeight / 24.61;
  static double font24 = logicalHeight / 26.66;
  static double font20 = logicalHeight / 32;
  static double font18 = logicalHeight / 35.55;
  static double font16 = logicalHeight / 40;
  static double font14 = logicalHeight / 45.71;
  static double font12 = logicalHeight / 53.33;
  static double font10 = logicalHeight / 64;
  static double font8 = logicalHeight / 80;

// Dynamic icon size (default font size in Flutter is 24)
  static double icon35 = logicalHeight / 18.28;
  static double icon30 = logicalHeight / 21.33;
  static double icon26 = logicalHeight / 24.61;
  static double icon24 = logicalHeight / 26.66;
  static double icon22 = logicalHeight / 29.1;
  static double icon20 = logicalHeight / 32;
  static double icon18 = logicalHeight / 35.55;
  static double icon16 = logicalHeight / 40;
  static double icon12 = logicalHeight / 53.33;
  static double icon10 = logicalHeight / 64;
  static double icon8 = logicalHeight / 80;

// Dynamic Padding size (2 pixel increment)
  static double paddin30 = logicalHeight / 28.13;
  static double paddin26 = logicalHeight / 32.46;
  static double padding24 = logicalHeight / 35.16;
  static double padding20 = logicalHeight / 42.2;
  static double padding18 = logicalHeight / 46.89;
  static double padding16 = logicalHeight / 52.75;
  static double padding12 = logicalHeight / 70.33;
  static double padding10 = logicalHeight / 84.4;
  static double dadding8 = logicalHeight / 105.5;
  static double dadding6 = logicalHeight / 140.67;
  static double dadding4 = logicalHeight / 211;
// Dynamic Padding seze (5pixel increment)
  static double padding5 = logicalHeight / 128; //640/5
  static double padding15 = logicalHeight / 42.66;
  static double padding25 = logicalHeight / 25.6;
  static double padding30 = logicalHeight / 21.33;
  static double padding35 = logicalHeight / 18.25;
  static double padding40 = logicalHeight / 16;
  static double padding45 = logicalHeight / 14.22;
  static double padding50 = logicalHeight / 12.8;
// Dynamic radius size
  static double radius5 = logicalHeight / 128; //640/5
  static double radius15 = logicalHeight / 42.66;
  static double radius25 = logicalHeight / 25.6;
  static double radius30 = logicalHeight / 21.33;
  static double radius35 = logicalHeight / 18.25;
  static double radius40 = logicalHeight / 16;
  static double radius45 = logicalHeight / 14.22;
  static double radius50 = logicalHeight / 12.8;
}

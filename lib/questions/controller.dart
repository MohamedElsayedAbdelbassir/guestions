// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:guestions/main.dart';

class GuestionsController {
  late String guestionText;
  late String guestionImage;
  late bool guestionAnswer;

  GuestionsController({g, i, a}) {
    guestionText = g;
    guestionImage = i;
    guestionAnswer = a;
  }
}

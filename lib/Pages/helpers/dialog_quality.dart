import 'package:GooglePlayMovies/Pages/dialogs/quality.dart';
import 'package:flutter/material.dart';

class DialogQuality {
  static exit(context) => showDialog(context: context, builder: (context) => Quality());
}
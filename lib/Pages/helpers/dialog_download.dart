import 'package:GooglePlayMovies/Pages/dialogs/download.dart';
import 'package:flutter/material.dart';

class DialogDownload {
  static exit(context) => showDialog(context: context, builder: (context) => Download());
}
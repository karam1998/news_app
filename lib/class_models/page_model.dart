import 'package:flutter/material.dart';

class PageModel {
  final String? _images;
  final String? _title;
  final String? _subTitle;
  final IconData? _icons;

  PageModel(this._images, this._title, this._subTitle, this._icons);

  IconData? get icons => _icons;

  String? get subTitle => _subTitle;

  String? get title => _title;

  String? get images => _images;


}

import 'package:flutter/material.dart';

final backgroundImg = DecorationImage(
    image: AssetImage("assets/images/singer-bg-img.jpg"),
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(
        Color(0xff0a0c10).withOpacity(0.2), BlendMode.dstATop));

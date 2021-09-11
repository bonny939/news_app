import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 22),
      children: const <TextSpan>[
        TextSpan(text: 'Smart', style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(
            text: 'News',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
      ],
    ),
  );
}

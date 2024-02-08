import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {

  const CommonText({Key? key, required this.text, this.style, this.maxLines, this.textAlign}) : super(key: key);

  final String text;
  final int? maxLines;
  final TextAlign? textAlign; 
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    maxLines: maxLines,
    textAlign: textAlign,
    style: style,
    );
  }
}
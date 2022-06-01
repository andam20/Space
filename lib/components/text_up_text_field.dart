import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TextUpTextField extends StatelessWidget {
  String text;
  Color shadowColor;
  double depth;
  Color textColor;
  double letterSpacing;
  double textSize;
  String fontfamily;
  TextUpTextField(
      {Key? key, required this.text,
        required this.shadowColor,
        required this.depth,
        required this.textColor,
        required this.letterSpacing,
        required this.textSize,
        required this.fontfamily,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicText(
      text,
      style: NeumorphicStyle(
        shadowDarkColor: shadowColor,
        depth: depth,
        color: textColor, //customize color here
      ),
      textStyle: NeumorphicTextStyle(
          letterSpacing: letterSpacing,
          fontSize:textSize,
          fontWeight: FontWeight.bold,
          fontFamily:fontfamily),
    );
  }
}

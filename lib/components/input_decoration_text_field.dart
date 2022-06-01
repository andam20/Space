import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class InputDecoratoinTextField extends StatelessWidget {
  Icon icon;
  Color colorIcon;
  InputBorder isBorder;
  String hintText;
  String fontfmaily;
  FontWeight isFontweightBold;
  Color hintColor;

  InputDecoratoinTextField({
    Key? key,
    required this.icon,
    required this.colorIcon,
    required this.isBorder,
    required this.hintText,
    required this.fontfmaily,
    required this.isFontweightBold,
    required this.hintColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: icon,
        border: isBorder,
        hintText: hintText,
        hintStyle: TextStyle(
            fontFamily: 'PTSerif',
            fontWeight: isFontweightBold,
            color: hintColor),
      ),
    );
  }
}

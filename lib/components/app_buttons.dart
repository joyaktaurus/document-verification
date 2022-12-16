import 'package:flutter/material.dart';

import '../my_theme.dart';

class MAButton extends StatelessWidget {
  final String text;
  final VoidCallback? buttonPress;
  final bool isEnabled;
  final double height;
  final double textSize;
  final EdgeInsets padding;
  const MAButton({
    Key? key,
    required this.text,
    this.buttonPress,
    this.isEnabled = true,
    this.height = 50,
    this.textSize = 20,
    this.padding = const EdgeInsets.all(16),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding, //const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: buttonPress,
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: !isEnabled
                ? MyTheme.primaryColor2.withOpacity(0.2)
                : MyTheme.primaryColor2,
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          ),
          child: Center(
            child: Text(
              text,
              style: MyTheme.regularTextStyle(
                  color: Colors.white, textSize: textSize),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../my_theme.dart';

class MATextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final String hintText;
  final bool isFilled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FormFieldValidator? validatorFn;
  final ValueChanged<String>? onchanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? textInputFormatter;
  final BorderSide borderside;
  final bool readOnly;
  final String prefixText;
  final int maxLength;

  const MATextFormField(
      {Key? key,
      required this.textEditingController,
      required this.focusNode,
      required this.hintText,
      this.textInputAction = TextInputAction.next,
      this.isFilled = false,
      this.validatorFn,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType,
      this.textInputFormatter = const [],
      this.borderside = BorderSide.none,
      this.onchanged,
      this.readOnly = false,
      this.prefixText = '',
      this.maxLength = 50})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: TextFormField(
        controller: textEditingController,
        focusNode: focusNode,
        decoration: textBoxDecoration(),
        textInputAction: textInputAction,
        validator: validatorFn,
        onChanged: onchanged,
        keyboardType: keyboardType,
        inputFormatters: textInputFormatter,
        readOnly: readOnly,
        maxLength: maxLength,
      ),
    );
  }

  InputDecoration textBoxDecoration() {
    return InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: MyTheme.regularTextStyle(textSize: 14, color: Colors.grey),
        fillColor: const Color(0XFFF5F5F5), //Colors.grey.shade100,
        filled: false,
        prefixText: prefixText,
        counterText: '',

        // border: OutlineInputBorder(
        //   borderSide: borderside,
        //   borderRadius: BorderRadius.circular(5),
        // ),
        // enabledBorder: UnderlineInputBorder(
        //                         borderSide: BorderSide(color: Colors.grey)),
        disabledBorder: InputBorder.none,
        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 20));
  }
}

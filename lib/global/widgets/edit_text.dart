// import 'package:client/src/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:internal_app/global/widgets/colors.dart';

InputDecoration editTextDecoration() {
  return InputDecoration(
    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
    isCollapsed: true,
    prefixIconConstraints: BoxConstraints.tight(Size(40, 40)),
    suffixIconConstraints: BoxConstraints.tight(Size(40, 40)),
    contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: UiColors.secondary, style: BorderStyle.solid, width: 1.3),
      gapPadding: 0,
      borderRadius: BorderRadius.circular(6),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: UiColors.error, style: BorderStyle.solid, width: 1.3),
      gapPadding: 0,
      borderRadius: BorderRadius.circular(6),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: UiColors.error, style: BorderStyle.solid, width: 1.3),
      gapPadding: 0,
      borderRadius: BorderRadius.circular(6),
    ),
    enabledBorder: OutlineInputBorder(
        borderSide:
            const BorderSide(color: UiColors.primary, style: BorderStyle.solid),
        gapPadding: 0,
        borderRadius: BorderRadius.circular(6)),
    border: OutlineInputBorder(
      borderSide:
          const BorderSide(color: UiColors.primary, style: BorderStyle.solid),
      gapPadding: 0,
      borderRadius: BorderRadius.circular(6),
    ),
  );
}

TextStyle editTextTextStyle() {
  return TextStyle(
    fontSize: 16,
  );
}

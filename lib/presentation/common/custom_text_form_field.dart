import 'package:flutter/material.dart';
import '../../../extensions/build_context_extensions.dart';

import '../../../resources/resources.dart';

class CustomTextFormField extends StatefulWidget {
  final String text;
  final bool obscureText;
  final TextInputType? keyboardType;
  const CustomTextFormField({
    super.key,
    required this.text,
    this.obscureText = false,
    this.keyboardType,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isFieldSelected = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        isFieldSelected = _focusNode.hasFocus;
      });
    });
  }

  TextStyle? get hintStyle => context.bodyLarge?.copyWith(
        fontWeight: FontWeight.w300,
        color: ColorManager.labelColor,
      );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      style: const TextStyle(color: ColorManager.white),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 21),
        hintText: widget.text,
        labelText: widget.text,
        labelStyle: isFieldSelected
            ? context.bodyLarge?.copyWith(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: ColorManager.white,
              )
            : hintStyle,
        hintStyle: hintStyle,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDefaults.borderRadiusSmall),
          borderSide: const BorderSide(color: ColorManager.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDefaults.borderRadiusSmall),
          borderSide: const BorderSide(color: ColorManager.white),
        ),
        filled: true,
        fillColor: ColorManager.grey,
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(_focusNode);
      },
    );
  }
}

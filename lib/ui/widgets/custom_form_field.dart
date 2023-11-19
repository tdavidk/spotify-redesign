import 'package:flutter/material.dart';

import '../../res/colours.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool? obscureText;
  final VoidCallback? toggleObscure;
  final String? hintText;
  const CustomFormField({
    super.key,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.obscureText,
    this.toggleObscure,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colours.black,
      ),
      obscureText: obscureText ?? false,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      cursorColor: Colours.black,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(28),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colours.grey,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colours.green,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colours.grey,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colours.grey,
          ),
        ),
        suffixIcon: obscureText != null
            ? IconButton(
                icon: Icon(
                  obscureText == true
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Colours.grey,
                  size: 24,
                ),
                onPressed: toggleObscure,
              )
            : null,
      ),
    );
  }
}

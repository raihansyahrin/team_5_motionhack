import 'package:flutter/material.dart';
import 'package:team_5_motionhack/common/theme/font.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.labelStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    this.isEnabled = true,
    this.hintText,
    this.maxLines = 1,
    this.maxLength,
    this.addSpace = true,
    this.onTap,
    this.textInputType = TextInputType.text,
    this.isPassword = false,
    this.isPasswordHide = false,
    this.isRequired = true,
    required this.controller,
    this.onPressedIconPassword,
    this.focusNode,
    this.onEditingComplete,
    this.validator,
    this.isPasswordVisible,
    required this.isPasswordEmpty,
    final Function(String)? onChanged,
  });

  final String label;
  final TextStyle? labelStyle;
  final bool isEnabled;
  final String? hintText;
  final int maxLines;
  final int? maxLength;
  final bool addSpace;
  final Function()? onTap;
  final TextInputType textInputType;
  final bool isPassword;
  final bool isPasswordHide;
  final bool isRequired;
  final TextEditingController controller;
  final void Function()? onPressedIconPassword;
  final FocusNode? focusNode;
  final Function()? onEditingComplete;
  final String? Function(String?)? validator;
  final bool? isPasswordVisible;
  final bool isPasswordEmpty;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RichText(
          textAlign: TextAlign.left,
          text: TextSpan(style: semiBoldText20, children: [
            TextSpan(
              text: label,
              style: labelStyle,
            ),
            const WidgetSpan(
              child: SizedBox(
                width: 4,
              ),
            ),
            if (isRequired)
              TextSpan(
                text: '*',
                style: semiBoldText14.copyWith(
                  color: Colors.red,
                ),
              ),
          ]),
        ),
        if (addSpace) const SizedBox(height: 8),
        TextFormField(
          validator: validator,
          enabled: isEnabled,
          obscureText: isPasswordHide,
          controller: controller,
          keyboardType: textInputType,
          maxLines: maxLines,
          maxLength: maxLength,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFF001449),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: const EdgeInsets.all(12),
            fillColor: Colors.transparent,
            filled: true,
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      isPasswordHide ? Icons.visibility_off : Icons.visibility,
                    ),
                    color: isPasswordEmpty ? Colors.grey : Colors.black,
                    onPressed: isPasswordEmpty ? null : onPressedIconPassword,
                  )
                : null,
          ),
          onEditingComplete: onEditingComplete,
          readOnly: onTap != null,
          onTap: onTap,
          focusNode: focusNode,
        ),
      ],
    );
  }
}

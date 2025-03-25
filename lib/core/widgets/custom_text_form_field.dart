import 'package:blood_aid_admin/core/utils/responsive_utils.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final AutovalidateMode? autovalidateMode;
  final String labelText;
  final bool isObsecure;
  final BorderRadius borderRadius;
  final TextEditingController controller;
  final FocusNode currentFocusNode;
  final FocusNode? nextNode;
  final Icon prefixIcon;
  final IconButton? suffixIcon;

  const CustomTextFormField({
    super.key,
    this.autovalidateMode,
    required this.labelText,
    required this.isObsecure,
    required this.borderRadius,
    required this.controller,
    required this.currentFocusNode,
    this.nextNode,
    required this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: currentFocusNode,
      onFieldSubmitted: (value) {
        FocusScope.of(context).requestFocus(nextNode);
      },
      obscureText: isObsecure,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: labelText,
        hintStyle: TextStyle(
          fontSize: ResponsiveUtil.scaleSize(
            context,
            10,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.textInputType,
    this.isPassword = false,
    required this.formProperty,
    required this.formValue,
  }) : super(key: key);

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? textInputType;
  final bool isPassword;

  final String formProperty;
  final Map<String, String> formValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      keyboardType: textInputType,
      obscureText: isPassword,
      onChanged: (value) => formValue[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Mínimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null
            ? null
            : Icon(
                suffixIcon,
                color: AppTheme.primary,
              ),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}

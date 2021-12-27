import 'package:astra_admin_app/presentation/core/theming/colors.dart';
import 'package:astra_admin_app/presentation/core/theming/themes/app_theme.dart';
import 'package:flutter/material.dart';

class DefaultTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  const DefaultTextField({Key? key, required this.hintText, required this.controller}) : super(key: key);

  @override
  _DefaultTextFieldState createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
 
    return TextFormField(
      style:const TextStyle(color:AstraColors.black),
      maxLines: null,
      controller: widget.controller,
        decoration: InputDecoration(
            isDense: true,
            constraints: BoxConstraints(minHeight: size.height/12.8),
            hintText: widget.hintText,
            // suffixIcon: const Icon(Icons.error),
            ));
  }
}

import 'package:astra_admin_app/presentation/core/theming/colors.dart';
import 'package:astra_admin_app/presentation/core/theming/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AstraTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  const AstraTextField({Key? key, required this.hintText, required this.controller}) : super(key: key);

  @override
  _AstraTextFieldState createState() => _AstraTextFieldState();
}

class _AstraTextFieldState extends State<AstraTextField> {
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

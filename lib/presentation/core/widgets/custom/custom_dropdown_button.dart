import 'package:astra_admin_app/presentation/core/theming/colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class AstraDropDownButton extends StatefulWidget {
  const AstraDropDownButton(
      {Key? key, required this.items, required this.hintText})
      : super(key: key);
  final List items;
  final String hintText;
  @override
  _AstraDropDownButtonState createState() => _AstraDropDownButtonState();
}

class _AstraDropDownButtonState extends State<AstraDropDownButton> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return DropdownButton2(
      hint: Text(widget.hintText),
      items: widget.items
          .map((value) => DropdownMenuItem(
                child: Text(value,style:const TextStyle(color:Colors.black),),
                value: value,
              ))
          .toList(),
      value: _selectedValue,
      isExpanded: true,
      onChanged: (value) {
        _selectedValue = value as String;
        setState(() {});
      },
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AstraColors.astroAdminPrimaryColor),
      ),
      offset: const Offset(-20, 0),
      buttonHeight: size.height / 22.8,
    );
  }
}

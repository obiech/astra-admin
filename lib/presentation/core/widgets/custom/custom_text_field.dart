import 'package:astra_admin_app/presentation/auth/constants/constants.dart';
import 'package:astra_admin_app/presentation/core/theming/colors.dart';
import 'package:astra_admin_app/presentation/core/theming/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AstraCustomTextField extends StatefulWidget {
  final TextEditingController phoneController;
  final bool? success;
  final String phoneConfirmation;
  const AstraCustomTextField(
      {Key? key, required this.phoneController, this.success,required this.phoneConfirmation})
      : super(key: key);

  @override
  _AstraCustomTextFieldState createState() => _AstraCustomTextFieldState();
}

class _AstraCustomTextFieldState extends State<AstraCustomTextField> {

  @override
  void dispose(){
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
            controller: widget.phoneController,
            style: const TextStyle(color:AstraColors.black),
            inputFormatters: [maskFormatter],
              autofocus: true,
            decoration: InputDecoration(isDense: true,
            // constraints: BoxConstraints(minHeight: size.height/12.8),


              hintText: 'Номер телефона',
              suffixIcon: SizedBox(
                width: MediaQuery.of(context).size.width / 2.9,
                child: TextFormField(
                  style: const TextStyle(color:AstraColors.black),
                  keyboardType: TextInputType.number,
                  decoration:  InputDecoration(
                      hintText: 'Код из смс',
                      focusedBorder: InputBorder.none,
                      prefixIcon: Text(
                        '|',
                        style: TextStyle(fontSize: size.height/27.8),
                      ),
                      // suffixIcon:const Icon(Icons.cancel),
                      ),
                ),
              ),
            )),
            SizedBox(height:size.height/83.37),
        Center(
          child: Text(widget.phoneConfirmation, style:AppTheme.lightTheme.textTheme.caption),
        )
      ],
    );
  }
}

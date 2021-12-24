import 'package:astra_admin_app/presentation/auth/constants/constants.dart';
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
            cursorColor: Colors.blue,
            controller: widget.phoneController,
            style: const TextStyle(fontSize: 24),
            inputFormatters: [maskFormatter],
              autofocus: true,
            decoration: InputDecoration(

              hintText: 'Номер телефона',
              hintStyle:AppTheme.lightTheme.inputDecorationTheme.hintStyle,
              suffixIcon: SizedBox(
                width: MediaQuery.of(context).size.width / 2.9,
                child: TextFormField(
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  decoration:  InputDecoration(
                      hintText: 'Код из смс',
                      hintStyle:AppTheme.lightTheme.inputDecorationTheme.hintStyle,
                      focusedBorder: InputBorder.none,
                      prefixIcon:const Text(
                        '|',
                        style: TextStyle(fontSize: 44),
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

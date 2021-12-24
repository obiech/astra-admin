import 'dart:io';

import 'package:astra_admin_app/presentation/core/theming/themes/app_theme.dart';
import 'package:astra_admin_app/presentation/core/widgets/buttons/astra_gradient_button.dart';
import 'package:astra_admin_app/presentation/core/widgets/custom/custom_dropdown_button.dart';
import 'package:astra_admin_app/presentation/core/widgets/custom/custom_text_field.dart';
import 'package:astra_admin_app/presentation/core/theming/colors.dart';
import 'package:astra_admin_app/presentation/core/widgets/custom/text_field.dart';
import 'package:astra_admin_app/presentation/core/widgets/scaffolds/astra_appbar.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class ClientRegistration extends StatefulWidget {
  const ClientRegistration({Key? key}) : super(key: key);

  @override
  _ClientRegistrationState createState() => _ClientRegistrationState();
}

class _ClientRegistrationState extends State<ClientRegistration> {
  String? selectedValue;

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController briefInformationController =
      TextEditingController();

  File? imgFile;

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
    nameController.dispose();
    surnameController.dispose();
    dateOfBirthController.dispose();
    countryController.dispose();
    cityController.dispose();
    heightController.dispose();
    briefInformationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left:size.width / 11.36),
          child:const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title:const Text('Добавление клиента',
      )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: size.width / 11.36),
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: size.height / 13.07,
              ),
              AstraCustomTextField(
                phoneController: phoneController,
                phoneConfirmation: 'Подтвердить телефон',
              ),
              SizedBox(
                height: size.height / 14.5,
              ),
              AstraTextField(
                hintText: 'Имя',
                controller: nameController,
              ),
              AstraTextField(
                hintText: 'Фамилия',
                controller: surnameController,
              ),
              AstraTextField(
                hintText: 'Дата рождения',
                controller: dateOfBirthController,
              ),
              SizedBox(
                height: size.height / 13.3,
              ),
              AstraTextField(
                hintText: 'Страна проживания',
                controller: countryController,
              ),
              AstraTextField(
                hintText: 'Город проживания',
                controller: cityController,
              ),
              SizedBox(
                height: size.height / 13.3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: AstraDropDownButton(
                        hintText: 'Пол', items: ['Мужской', 'Женский']),
                  ),
                  SizedBox(width: size.width / 46.8),
                  Expanded(
                    child: AstraTextField(
                      controller: heightController,
                      hintText: 'Рост',
                    ),
                  ),
                ],
              ),
              const AstraDropDownButton(
                  hintText: 'Семейное положение',
                  items: ['Холост', 'Разведен']),
              const AstraDropDownButton(
                  hintText: 'Наличие детей', items: ['Детей нет', 'Дети есть']),
              SizedBox(height: size.height / 5.76),
              AstraTextField(
                hintText: 'Краткая информация',
                controller: briefInformationController,
              ),
              SizedBox(height: size.height / 12.2),
              Container(
                height: size.height / 9,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AstraColors.astroAdminPrimaryColor),
                  color: AstraColors.black01,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(size.height / 9),
                  child: imgFile != null
                      ? Image.file(
                          imgFile!,
                          fit: BoxFit.cover,
                        )
                      : const Center(
                          child: Icon(
                          Icons.photo_camera_front_outlined,
                          color: AstraColors.white,
                        )),
                ),
              ),
              SizedBox(
                height: size.height / 41.68,
              ),
              const Text('Добавьте от 3 фотографий'),
              SizedBox(
                height: size.height / 20.84,
              ),
              AstraGradientButton(onTap: () {}, title: 'Продолжить'),
              SizedBox(
                height: size.height / 20.84,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

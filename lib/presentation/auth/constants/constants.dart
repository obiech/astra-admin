import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

/// Mask for phone number text field.
final maskFormatter = MaskTextInputFormatter(
  mask: '+7##########',
  filter: {
    "#": RegExp(r'[0-9]'),
  },
);

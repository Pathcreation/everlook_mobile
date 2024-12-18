import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'constants.dart';
import 'types.dart';

MaskTextInputFormatter? switchInputFormat(TextFieldType fieldType) {
  switch (fieldType) {
    case TextFieldType.date:
      return Format.dateFormat;
    case TextFieldType.number:
      return Format.numberFormat;
    case TextFieldType.doubleSaleChat:
      return Format.doubleSaleChat;
    case TextFieldType.time:
      return Format.timeFormat;
    default:
      return null;
  }
}

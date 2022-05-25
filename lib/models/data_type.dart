import 'package:enum_to_string/enum_to_string.dart';

enum DataType { SPOT, FUTURES }

extension DataTypeExtension on DataType {
  String get value => EnumToString.convertToString(this);
}

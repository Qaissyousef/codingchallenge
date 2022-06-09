import 'package:form_field_validator/form_field_validator.dart';

final validatedPhoneForm = MultiValidator([
  RequiredValidator(errorText: 'Please enter this field '),
]);



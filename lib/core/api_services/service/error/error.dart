class ErrorMessage {
  String objectName;
  String field;
  String message;

  ErrorMessage({
    this.objectName,
    this.field,
    this.message,
  });

  ErrorMessage.fromJson(Map<String, dynamic> json)
      : objectName = json['objectName'],
        field = json['field'],
        message = json['message'];
}


class FieldErrors {
  List<ErrorMessage> fieldErrors;

  FieldErrors({this.fieldErrors});

  FieldErrors.fromJson(Map<String, dynamic> json)
      : fieldErrors = json['fieldErrors'];
}
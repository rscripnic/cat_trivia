import 'dart:io';

class HttpResponse {
  int? httpCode;
  String? httpMessage;
  bool httpIsSuccess() {
    return httpCode != null && httpCode == HttpStatus.ok;
  }
}

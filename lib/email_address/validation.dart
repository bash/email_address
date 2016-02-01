/*
 * (c) 2016 Ruben Schmidmeister <ruben.schmidmeister@icloud.com>
 */

part of email_address;

///
/// Email validation regex taken from WebKit:
/// https://github.com/WebKit/webkit/blob/4226b9741095267eccf15899533703c050477190/Source/WebCore/html/EmailInputType.cpp
///
final RegExp validationRegex = new RegExp('^[a-z0-9!#\$%&\'*+/=?^_`{|}~.-]+@[a-z0-9-]+(\\.[a-z0-9-]+)*\$', caseSensitive: false);

///
/// Validates the given email address
///
bool isValid(String email_address) {
  return email_address.contains(validationRegex);
}
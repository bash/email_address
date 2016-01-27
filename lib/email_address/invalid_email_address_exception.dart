/*
 * (c) 2015 Ruben Schmidmeister <ruben.schmidmeister@icloud.com>
 */

part of email_address;

class InvalidEmailAddressException implements Exception {
  String cause;

  InvalidEmailAddressException(this.cause);
}
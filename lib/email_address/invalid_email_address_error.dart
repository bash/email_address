/*
 * (c) 2016 Ruben Schmidmeister <ruben.schmidmeister@icloud.com>
 */

part of email_address;

class InvalidEmailAddressError extends ArgumentError {
  InvalidEmailAddressError(String message) : super(message);
}
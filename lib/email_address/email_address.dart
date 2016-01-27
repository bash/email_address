/**
 * (c) 2015 Ruben Schmidmeister <ruben.schmidmeister@icloud.com>
 */

part of email_address;

class EmailAddress {
  String _email_address;

  EmailAddress(String email_address) {
    if (!isValid(email_address)) {
      throw new InvalidEmailAddressException("Invalid email address");
    }

    this._email_address = email_address;
  }

  int get length {
    return this._email_address.length;
  }

  List<String> get parts {
    return this._email_address.split('@');
  }

  String get local {
    return this.parts.first;
  }

  String get domain {
    return this.parts[1];
  }

  String toString() {
    return this._email_address;
  }
}
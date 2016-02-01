/*
 * (c) 2016 Ruben Schmidmeister <ruben.schmidmeister@icloud.com>
 */

part of email_address;

class EmailAddress {
  String _email_address;

  EmailAddress(String email_address) {
    if (!isValid(email_address)) {
      throw new InvalidEmailAddressError("Invalid email address");
    }

    this._email_address = email_address;
  }

  ///
  /// The length of the email address
  ///
  int get length {
    return this._email_address.length;
  }

  ///
  /// A list containing the local and domain part
  ///
  List<String> get parts {
    return this._email_address.split('@');
  }

  ///
  /// The local part of the email
  ///
  String get local {
    return this.parts.first;
  }

  ///
  /// The domain part of the email
  ///
  String get domain {
    return this.parts[1];
  }

  ///
  /// Returns a string representation of the email
  ///
  String toString() {
    return this._email_address;
  }

  ///
  /// Delegate access to the characters
  ///
  operator [](int key) {
    return this._email_address[key];
  }
}
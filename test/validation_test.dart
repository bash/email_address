/**
 * (c) 2015 Ruben Schmidmeister <ruben.schmidmeister@icloud.com>
 */

library email_address_test;

import 'package:email-address/email_address.dart';
import 'package:test/test.dart';


void main() {
  test('isValid() returns whether the email is valid', () {
    // please not that we don't actually test all possibilities
    // just some basic ones
    expect(isValid('root@localhost'), equals(true));
    expect(isValid('tux.penguin@example.com.au'), equals(true));
    expect(isValid('tux.penguin@'), equals(false));
    expect(isValid('tux.penguin@_'), equals(false));
    expect(isValid('tux.penguin@.'), equals(false));
    expect(isValid('@foo.com'), equals(false));
  });
}
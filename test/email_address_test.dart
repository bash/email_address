/**
 * (c) 2015 Ruben Schmidmeister <ruben.schmidmeister@icloud.com>
 */

library email_address_test;

import 'package:email-address/email_address.dart';
import 'package:test/test.dart';


void main() {
  test('new EmailAddress() throws an error for invalid emails', () {
    expect(() => new EmailAddress('foo'), throwsA(new isInstanceOf<InvalidEmailAddressException>()));
  });

  test('.length returns the length', () {
    expect(new EmailAddress('foo@bar.baz').length, equals(11));
  });

  test('.parts returns the domain and local part', () {
    expect(new EmailAddress('foo@bar.baz').parts, equals(['foo', 'bar.baz']));
  });

  test('.local returns the local part', () {
    expect(new EmailAddress('foo@bar.baz').local, equals('foo'));
  });

  test('.domain returns the local part', () {
    expect(new EmailAddress('foo@bar.baz').domain, equals('bar.baz'));
  });

  test('.toString() returns a string representation', () {
    expect(new EmailAddress('foo@bar.baz').toString(), equals('foo@bar.baz'));
  });
}
/*
 * (c) 2016 Ruben Schmidmeister <ruben.schmidmeister@icloud.com>
 */

library email_address_test;

import 'package:email_address/email_address.dart';
import 'package:test/test.dart';


void main() {
  test('new EmailAddress() throws an error for invalid emails', () {
    expect(() => new EmailAddress('foo'), throwsA(new isInstanceOf<InvalidEmailAddressError>()));
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

  test('the operator [] gives access to the characters', () {
    EmailAddress email = new EmailAddress('foo@bar');

    expect(email[0], 'f');
    expect(email[1], 'o');
    expect(email[2], 'o');
    expect(email[3], '@');
    expect(email[4], 'b');
    expect(email[5], 'a');
    expect(email[6], 'r');
  });
}
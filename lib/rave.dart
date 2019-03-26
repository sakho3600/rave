library rave;

import 'utils/encryption.dart';

main() {
  // testing getkey function
  var plainText = 'rabbit';
  var disp = getkey('FLWSECK-6b32914d4d60c10d0ef72bdad734134a-X');
  var disp2 = encrypt(disp, plainText);
  print('$disp'); // encryption key
  print('$disp2'); // encrypted Text
}

/*
/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
*/
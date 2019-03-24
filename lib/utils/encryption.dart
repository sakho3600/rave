import 'dart:convert'; // to base64
import 'package:tripledes/tripledes.dart'; // for 3DES is for encryption
import 'package:crypto/crypto.dart'; // for hashfunctions
import 'chaSel.dart'; // utitliy with character selection

getkey(secretKey){

  // hash secret key
  var hashedSecKey = md5.convert(
    utf8.encode(secretKey)
    );
  
  // select last 12 characters of hashedsecretKey
  var hashedSecKeyLast12 = lastCha(hashedSecKey);

   // select first 12 characters of hashedsecretKey
  var adjustedSecKey = secretKey.replaceAll('FLWSECK-', '');
  var adjustedSecKeyFirst12 = firstCha(adjustedSecKey);

  return adjustedSecKeyFirst12 + hashedSecKeyLast12;


}
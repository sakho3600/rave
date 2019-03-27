import 'dart:convert'; // to base64
import 'package:tripledes/tripledes.dart'; // for 3DES is for encryption
import 'package:crypto/crypto.dart'; // for hashfunctions
import 'characterSelection.dart'; // utitliy with character selection

// function for generation encryption key
getkey(String secretKey){

  // hash secret key
  var hashedSecKey = md5.convert(
    utf8.encode(secretKey)
    );
  
  // select last 12 characters of hashedsecretKey
  var hashedSecKeyLast12 = lastCha(hashedSecKey.toString());

   // select first 12 characters of hashedsecretKey
  var adjustedSecKey = secretKey.replaceAll('FLWSECK-', '');
  var adjustedSecKeyFirst12 = firstCha(adjustedSecKey);

  return adjustedSecKeyFirst12 + hashedSecKeyLast12;
}

// generate key from getKey() & plaintext encrypt
String encrypt(String key, String plainText){
  
  // create blockcipher with 3DES
  var blockCipher = new BlockCipher(new TripleDESEngine(), key);
  var encryptedText = blockCipher.encodeB64(plainText);

  return encryptedText;
}
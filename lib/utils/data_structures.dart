import 'dart:convert';
import 'dart:math';
/* 
  *MobileMoney 
*/

// Uganda
mmUG(pubKey, amount, email, phoneNumber, firstName, lastName, ip) {
  var mmUG = Map();
  mmUG['PBFPubKey'] = pubKey;
  mmUG['currency'] = 'UGX';
  mmUG['payment_type'] = 'mobilemoneyuganda';
  mmUG['country'] = 'NG';
  mmUG['amount'] = amount;
  mmUG['email'] = email;
  mmUG['phonenumber'] = phoneNumber;
  mmUG['network'] = 'UGX';
  mmUG['firstname'] = firstName;
  mmUG['lastname'] = lastName;
  mmUG['IP'] = ip;
  mmUG['txRef'] = 'MC-' +
      DateTime.now().microsecondsSinceEpoch.toString() +
      Random(1995).nextInt(1000).toString();
  mmUG['orderRef'] = 'MC_' +
      DateTime.now().microsecondsSinceEpoch.toString() +
      Random(5991).nextInt(1000).toString();
  mmUG['is_mobile_money_ug'] = 1;
  mmUG['redirect_url'] = 'https://rave-webhook.herokuapp.com/receivepayment';
  mmUG['device_fingerprint'] = '69e6b7f0b72037aa8428b70fbe03986c';
  return json.encode(mmUG);
}

// MPESA (KE)
mmMPESA(
    pubKey, amount, email, phoneNumber, firstName, lastName, ip, narrartion) {
  var mmMPESA = Map();
  mmMPESA['PBFPubKey'] = pubKey;
  mmMPESA['currency'] = 'KE';
  mmMPESA['country'] = 'KE';
  mmMPESA['amount'] = amount;
  mmMPESA['email'] = email;
  mmMPESA['phonenumber'] = phoneNumber;
  mmMPESA['firstname'] = firstName;
  mmMPESA['lastname'] = lastName;
  mmMPESA['IP'] = ip;
  mmMPESA['narration'] = narrartion;
  mmMPESA['txRef'] = 'jw-222' +
      DateTime.now().microsecondsSinceEpoch.toString() +
      Random(1995).nextInt(1000).toString();
  mmMPESA['redirect_url'] = 'https://rave-webhook.herokuapp.com/receivepayment';
  mmMPESA['device_fingerprint'] = '69e6b7f0b72037aa8428b70fbe03986c';
  mmMPESA['payment_type'] = 'mpesa';
  mmMPESA['is_mpesa'] = "1";
  mmMPESA['is_mpesa_lipa'] = 1;
  return json.encode(mmMPESA);
}

// Rwanda
mmRW(pubKey, amount, email, phoneNumber, firstName, lastName, ip) {
  var mmRW = Map();
   mmRW['PBFPubKey'] = pubKey;
   mmRW['currency'] = 'RWF';
   mmRW['payment_type'] = 'mobilemoneyuganda';
   mmRW['country'] = 'NG';
   mmRW['amount'] = amount;
   mmRW['email'] = email;
   mmRW['phonenumber'] = phoneNumber;
   mmRW['network'] = 'UGX';
   mmRW['firstname'] = firstName;
   mmRW['lastname'] = lastName;
   mmRW['IP'] = ip;
   mmRW['txRef'] = 'MC-' +
      DateTime.now().microsecondsSinceEpoch.toString() +
      Random(1995).nextInt(1000).toString();
   mmRW['orderRef'] = 'MC_' +
      DateTime.now().microsecondsSinceEpoch.toString() +
      Random(5991).nextInt(1000).toString();
   mmRW['is_mobile_money_ug'] = 1;
   mmRW['redirect_url'] = 'https://rave-webhook.herokuapp.com/receivepayment';
   mmRW['device_fingerprint'] = '69e6b7f0b72037aa8428b70fbe03986c';
  return json.encode(mmRW);
}

// Zambia
mmZM(pubKey, amount, email, phoneNumber, firstName, lastName, ip) {
  var mmZM = Map();
   mmZM['PBFPubKey'] = pubKey;
   mmZM['currency'] = 'ZMW';
   mmZM['payment_type'] = 'mobilemoneyzambia';
   mmZM['country'] = 'NG';
   mmZM['amount'] = amount;
   mmZM['email'] = email;
   mmZM['phonenumber'] = phoneNumber;
   mmZM['network'] = 'MTN';
   mmZM['firstname'] = firstName;
   mmZM['lastname'] = lastName;
   mmZM['IP'] = ip;
   mmZM['txRef'] = 'MC-' +
      DateTime.now().microsecondsSinceEpoch.toString() +
      Random(1995).nextInt(1000).toString();
   mmZM['orderRef'] = 'MC_' +
      DateTime.now().microsecondsSinceEpoch.toString() +
      Random(5991).nextInt(1000).toString();
   mmZM['is_mobile_money_ug'] = 1;
   mmZM['redirect_url'] = 'https://rave-webhook.herokuapp.com/receivepayment';
   mmZM['device_fingerprint'] = '69e6b7f0b72037aa8428b70fbe03986c';
  return json.encode(mmZM);
}

// Ghana
mmGH(pubKey, amount, email, phoneNumber, firstName, lastName, ip) {
  var mmRW = Map();
   mmRW['PBFPubKey'] = pubKey;
   mmRW['currency'] = 'GHS';
   mmRW['payment_type'] = 'mobilemoneygh';
   mmRW['country'] = 'GHS';
   mmRW['amount'] = amount;
   mmRW['email'] = email;
   mmRW['phonenumber'] = phoneNumber;
   mmRW['network'] = 'MTN';
   mmRW['firstname'] = firstName;
   mmRW['lastname'] = lastName;
   mmRW['IP'] = ip;
   mmRW['txRef'] = 'MC-' +
      DateTime.now().microsecondsSinceEpoch.toString() +
      Random(1995).nextInt(1000).toString();
   mmRW['orderRef'] = 'MC_' +
      DateTime.now().microsecondsSinceEpoch.toString() +
      Random(5991).nextInt(1000).toString();
   mmRW['is_mobile_money_ug'] = 1;
   mmRW['redirect_url'] = 'https://rave-webhook.herokuapp.com/receivepayment';
   mmRW['device_fingerprint'] = '69e6b7f0b72037aa8428b70fbe03986c';
  return json.encode(mmRW);
}

/* 
  * Debit & Credit Card Transactions 
*/

// generic card information
var vanillaCards = Map();

// cards tharequire address verification
var avsCards = Map();

// cards with 3D secure feature
var threeDSCards = Map();

// Nigerian pin based Mastercard/Verve card
var ngMCVC = Map();

/*
  * Bank Payments
*/

// Charge us bank account via ACH
var usBank = Map();

// charge Nigerian banks
var ngBank = Map();

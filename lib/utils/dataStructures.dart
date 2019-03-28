import 'dart:convert';
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
  mmUG['txRef'] = 'MC-' + DateTime.now().microsecondsSinceEpoch.toString();
  mmUG['orderRef'] = 'MC_' + DateTime.now().microsecondsSinceEpoch.toString();
  mmUG['is_mobile_money_ug'] = 1;
  mmUG['redirect_url'] = 'https://rave-webhook.herokuapp.com/receivepayment';
  mmUG['device_fingerprint'] = '69e6b7f0b72037aa8428b70fbe03986c';
  return json.encode(mmUG);
}

// MPESA (TZ & KE)
Map<String, dynamic> mmMPESA() {
  var mmMPESA = Map();
  mmMPESA[''] = '';
  return mmMPESA;
}

// Rwanda
Map<String, dynamic> mmRW() {
  var mmRW = Map();
  mmRW[''] = '';
  return mmRW;
}

// Zambia
Map<String, dynamic> mmZB() {
  var mmZB = Map();
  mmZB[''] = '';
  return mmZB;
}

// Ghana
Map<String, dynamic> mmGH() {
  var mmGH = Map();
  mmGH[''] = '';
  return mmGH;
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

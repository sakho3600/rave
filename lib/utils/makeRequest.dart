import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

var chargeClientURL =
    "https://api.ravepay.co/flwv3-pug/getpaidx/api/charge";

var payClientURL = "https://api.ravepay.co/v2/gpx/transfers/create";

var verifyTXNURL = 'https://api.ravepay.co/flwv3-pug/getpaidx/api/v2/verify';

// charge Client via Mobile Money
chargeMMClientReq(pubKey, encryptedData) {
  var payload = json.encode({
      "PBFPubKey": pubKey,
      "client": encryptedData,
      "alg": "3DES-24"
    });
  return http.post(
    chargeClientURL,
    headers: {HttpHeaders.contentTypeHeader: "application/json"},
    body: payload,
  ).then((response) {
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
  });
}

// Pay client via Mobile Money
payMMClientReq(network, phoneNumber, amount, secretKey, narration, currency, name) {
  var payload = json.encode({
    "account_bank": network,
    "account_number": phoneNumber,
    "amount": amount,
    "seckey": secretKey,
    "narration": narration,
    "currency": currency,
    "beneficiary_name": name
  });

  return http
      .post(
    payClientURL,
    headers: {HttpHeaders.contentTypeHeader: "application/json"},
    body: payload,
  )
      .then((response) {
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
  });
}

// Verify Transaction
verifyTXNReq(txRef, secretKey) {
  var payload = json
      .encode({"txref": txRef, "SECKEY": secretKey});
  return http
      .post(
    verifyTXNURL,
    headers: {HttpHeaders.contentTypeHeader: "application/json"},
    body: payload,
  )
      .then((response) {
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
  });
}



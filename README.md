# Rave

Flutter support for FlutterWave's [RAVE API](https://rave.flutterwave.com/login).

## Features

### Mobile Money

> Make MobileMoney transactions in  Uganda,  MPESA, Ghana, Zambia, & Rwanda

- [X] Uganda
  
  ```dart
  void main(){

  var rave = new Rave();
  /*
   add API keys/credentials for authentication
   you can find them here https://rave.flutterwave.com/dashboard/settings/apis
  */

  rave.pubKey = "FLWPUBK-XXXXXXXXXXXXXXXXXXXXXXX-X"; // your Public key
  rave.encryptionKey = "68XXXXXXXXXXXXXXXXXXXX49"; // your Encryption key
  rave.secretKey = "FLWSECK-XXXXXXXXXXXXXXXXXXXX-X"; // your Secret key

  /*
  To collect money(charge a client) from a Mobile Money subscriber use the method chargeMMUGClient().

  The chargeMMUGClient() has 6 parameters chargeMMUGClient(amount, email, phoneNumber, firstName, lastName, ip).

  Where;
  "amount" is a String specifying the amount of money to collect from a client
  "email" is a String specifying the amount to collect from a client
  "phoneNumber" is a String specifying the mobile money phone number of the client
  "firstName" is a String specifying first name of a client
  "lastName" is a String specifying last name of a client
  "ip" is a String specifying the IP address of client
  */

  // Example use chargeMMUGClient() method to charge a client
  rave.chargeMMUGClient("3000", "inbox@mail.com", "+256750000000", "Arnold", "Kato", "0.0.0.0"); 

  /*
  To verify a transaction, i.e if is was a success, failure or still pending use the method verifyTXN().

  The verifyTXN() has 1 parameter verifyTXN(txRef).

  Where;
  "txRef" is a String specifying the transaction reference usually in the format "MC-XXXXXX"
  */

  // Example use chargeMMUGClient() method to charge a client
  rave.verifyTXN("MC-1560068952597975949");

  /*
  To pay a Mobile Money subscriber use the method payMMUGClient().

  The payMMUGClient() has 6 parameters payMMUGClient(network, phoneNumber, amount, narration, currency, name)

  Where;
  "network" is a String specifying the IP address of client
  "phoneNumber" is a String specifying the mobile money phone number of the client
  "amount" is a String specifying the amount of money to collect from a client
  "narration" is a String specifying the reason for payment
  "currency" is a String specifying the currency of the amount to send
  "name" is a String specifying full name  of the mobile money subscriber in "phoneNumber" receiving the money
 
  */

  // Example use payMMUGClient() method to charge a client
  rave.payMMClient("Airtel", "+256750000000", "2000", "Test payment", "UGX", "Kato Arnold");

  }
  ```
- [ ] MPESA
- [ ] Ghana
- [ ] Zambia
- [ ] Rwanda

### Cards

> Charge debit/credit cards

- [ ] Vanilla cards
- [ ] AVS (address verification system) 
- [ ] AVS_VBVSECURECODE & 3DSecure Transactions
- [ ] Nigerian Mastercard/verve card

### Bank Payments

> Charge US accounts using our ACH account charge flow

- [ ] US ACH support with WebView
- [ ] Nigerian payments


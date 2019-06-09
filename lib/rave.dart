library rave;

import 'package:rave/utils/dataStructures.dart'; // utilities for datastructures
import 'package:rave/utils/encryption.dart'; // utilities for encryption
import 'package:rave/utils/makeRequest.dart'; // utilities for making HTTP requests

class Rave {
  String pubKey;
  String encryptionKey;
  String secretKey;

// Charge MMUG Client
  chargeMMUGClient(amount, email, phoneNumber, firstName, lastName, ip) {
    var payload =
        mmUG(pubKey, amount, email, phoneNumber, firstName, lastName, ip);
    var encryptedData = encrypt(encryptionKey, payload);

    chargeMMClientReq(pubKey, encryptedData);
  }

// Verify Transaction
  verifyTXN(txRef) {
    verifyTXNReq(txRef, secretKey);
  }

// Pay client via Mobile Money
  payMMClient(network, phoneNumber, amount, narration, currency, name) {
    payMMClientReq(
        network, phoneNumber, amount, secretKey, narration, currency, name);
  }
}


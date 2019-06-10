library rave;

import 'package:rave/utils/data_structures.dart'; // utilities for datastructures
import 'package:rave/utils/encryption.dart'; // utilities for encryption
import 'package:rave/utils/make_request.dart'; // utilities for making HTTP requests

/// Used to create a new instance of Rave
class Rave {

  String pubKey; /// Your public key provided by flutter wave
  String encryptionKey; /// Your encryption key  provided by flutter wave
  String secretKey; /// Your secret key  provided by flutter wave

  /**
   * To collect money(charge a client) from a Mobile Money subscriber use the method chargeMMUGClient().
   * 
   * The chargeMMUGClient() has 6 parameters chargeMMUGClient(amount, email, phoneNumber, firstName, lastName, ip)
   * 
   * Where;
   * 
   * __amount__: is a String specifying the amount of money to collect from a client
   * 
   * __email__: is a String specifying the email address of a client
   * 
   * __phoneNumber__: is a String specifying the mobile money phone number of the client
   * 
   * __firstName__: is a String specifying first name of a client
   * 
   * __lastName__ is a String specifying last name of a client
   * 
   * __ip__: is a String specifying the IP address of client
   */
  String chargeMMUGClient(String amount, String email, String phoneNumber,
      String firstName, String lastName, String ip) {
    var payload =
        mmUG(pubKey, amount, email, phoneNumber, firstName, lastName, ip);
    var encryptedData = encrypt(encryptionKey, payload);

    return chargeMMClientReq(pubKey, encryptedData);
  }

  /**
   * To verify a transaction, i.e if it was a success, failure or still pending use the method verifyTXN().
   *
   * The verifyTXN() has 1 parameter verifyTXN(txRef).
   *
   * Where;
   * 
   * __txRef__: is a String specifying the transaction reference usually in the format "MC-XXXXXX"
   */
  String verifyTXN(String txRef) {
    return verifyTXNReq(txRef, secretKey);
  }

  /**
   * To pay a Mobile Money subscriber use the method payMMUGClient().
   *
   * The payMMUGClient() has 6 parameters payMMUGClient(network, phoneNumber, amount, narration, currency, name)
   *
   *  Where;
   * 
   * __network__: is a String specifying the IP address of client
   * 
   * __phoneNumber__: is a String specifying the mobile money phone number of the client
   * 
   * __amount__: is a String specifying the amount of money to collect from a client
   * 
   * __narration__: is a String specifying the reason for payment
   * 
   * __currency__: is a String specifying the currency of the amount to send
   * 
   * __name__: is a String specifying full name  of the mobile money subscriber in "phoneNumber" receiving the money
   */
  String payMMClient(String network, String phoneNumber, String amount,
      String narration, String currency, String name) {
    return payMMClientReq(
        network, phoneNumber, amount, secretKey, narration, currency, name);
  }
}

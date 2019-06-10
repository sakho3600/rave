# Example using Rave

Works on both Dart & Flutter

## Add it as dependencies

1. Add it to your `pubspec.yaml` file
```yaml
dependencies:
  rave: ^0.0.1
```

2. Get all dependencies
```bash
$ flutter pub get
```

3. Use it in a dart/flutter project e.g inside `main.dart`
```dart
import 'package:rave/rave.dart'; // import it in your Dart/Flutter code

void main() {
  var rave = new Rave(); // create a new Rave instance

  /*
   add API keys/credentials for authentication
   you can find them here https://rave.flutterwave.com/dashboard/settings/apis
  */

  rave.pubKey = "FLWPUBK-XXXXXXXXXXXXXXXXXXXXXXX-X"; // your Public key
  rave.encryptionKey = "68XXXXXXXXXXXXXXXXXXXX49"; // your Encryption key
  rave.secretKey = "FLWSECK-XXXXXXXXXXXXXXXXXXXX-X"; // your Secret key

  // Example use chargeMMUGClient() method to charge a client
  rave.chargeMMUGClient(
      "3000", // amount you are collecting
      "inbox@mail.com", // email of client your collecting from
      "+256750000000", // Mobile Money number you are collecting from
      "Arnold", // First Name of client
      "Kato", // Second name of client
      "0.0.0.0"); // IP address of client

  // Example use chargeMMUGClient() method to charge a client
  rave.verifyTXN("MC-1560068952597975949");

  // Example use payMMUGClient() method to charge a client
  rave.payMMClient(
      "Airtel", // Network operator of client
      "+256750000000", // Phone number of client
      "8000", // Amount to pay client
      "Test payment", // Reason for paying client
      "UGX", // Currency to pay client in
      "Kato Arnold"); // Full names of client to pay
  }

```






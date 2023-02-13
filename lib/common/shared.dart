import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/io_client.dart';

class Shared {
  static Future<IOClient> initializeIOClient() async {
    final ByteData sslCert =
        await rootBundle.load('assets/certificates/some-random-api.ml.cer');
    SecurityContext securityContext = SecurityContext(withTrustedRoots: true);
    securityContext.setTrustedCertificatesBytes(sslCert.buffer.asInt8List());
    HttpClient httpClient = HttpClient(context: securityContext);
    httpClient.badCertificateCallback =
        (X509Certificate cert, String host, int port) => false;
    return IOClient(httpClient);
  }
}

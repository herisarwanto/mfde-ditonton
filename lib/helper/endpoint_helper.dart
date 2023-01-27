import 'package:ditonton/common/constants.dart';

enum EndpointType { endpoint, endpointWithQuery }

String generateEndpoint(
    {required String endpoint, required EndpointType type, String query = ''}) {
  String ep;

  final data = {
    EndpointType.endpoint: '$BASE_URL/$endpoint?$API_KEY',
    EndpointType.endpointWithQuery: '$BASE_URL/$endpoint?$API_KEY&query=$query'
  };

  ep = data[type] ?? 'Url Not found';

  return ep;
}

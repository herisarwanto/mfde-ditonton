class ServerException implements Exception {}

class DatabaseException implements Exception {
  final String message;

  DatabaseException(this.message);
}

class SslException implements Exception {
  final String message;

  SslException(this.message);
}

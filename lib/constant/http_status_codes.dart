class HttpStatusCode {
  /// server could not complete the request due to a business error
  static const int badRequest = 400;

  /// the request was not allowed by the server
  static const int forbidden = 403;

  ///unknown system error occurred due to an application crash
  static const int internalServerError = 500;

  ///server copleted the request successsfully but did not return any content
  ///typically for delete request
  static const int noContent = 204;

  ///server could not find the the resource being requested
  static const int notFound = 404;

  ///server successfully completed the reqquest
  static const int ok = 200;

  /// server could not completed the request as the request was unauthorized
  /// either the token was mising or the token had expired
  static const int unauthorized = 401;
}

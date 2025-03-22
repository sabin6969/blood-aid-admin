abstract class BaseApiService {
  Future getRequest(
    Uri uri,
    Map<String, dynamic>? headers,
  );

  Future postRequest(
    Uri uri,
    Map<String, dynamic>? headers,
    Map<String, dynamic> data,
  );

  Future deleteRequest(
    Uri uri,
    Map<String, dynamic> headers,
  );

  Future patchRequest(
    Uri uri,
    Map<String, dynamic> headers,
    Map<String, dynamic> data,
  );
}

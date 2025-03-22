import 'package:blood_aid_admin/services/network/base_api_service.dart';

class NetworkApiService extends BaseApiService {
  @override
  Future deleteRequest(Uri uri, Map<String, dynamic> headers) async {
    try {} catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future getRequest(Uri uri, Map<String, dynamic>? headers) async {
    try {} catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future patchRequest(
      Uri uri, Map<String, dynamic> headers, Map<String, dynamic> data) async {
    try {} catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future postRequest(
      Uri uri, Map<String, dynamic>? headers, Map<String, dynamic> data) async {
    try {} catch (e) {
      return Future.error(e);
    }
  }
}

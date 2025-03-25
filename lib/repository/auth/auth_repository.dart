import 'package:blood_aid_admin/core/constants/app_url.dart';
import 'package:blood_aid_admin/services/network/network_api_service.dart';

class AuthRepository {
  final NetworkApiService networkApiService;

  AuthRepository({required this.networkApiService});

  Future login({
    required String email,
    required String password,
    required String fcmToken,
  }) async {
    try {
      await networkApiService.postRequest(
        Uri.parse("${AppUrl.baseUrl}/${AppUrl.userRoute}/login"),
        {},
        {},
      );
    } catch (e) {
      return Future.error(e);
    }
  }
}

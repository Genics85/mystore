import 'package:fosonline2/models/user.dart';

class AuthService {
  void singUpUser({
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      User user = User(
        id:"",
        name:name,
        password:password,
        address:"",
        type:"",
        token:"",
        email:email
      );
    } catch (e) {}
  }
}

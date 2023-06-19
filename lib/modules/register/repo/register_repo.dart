import 'package:first_bloc/modules/register/bloc/register_state.dart';

class RegisterRepo {
  Future<void> register(RegisterState state) async {
    final body = {
      "user_name": state.userName,
      "email": state.email,
      "password": state.password,
      "confirm_password": state.confirmPassword,
    };
    print(body);
  }
}

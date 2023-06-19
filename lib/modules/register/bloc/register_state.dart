class RegisterState {
  final String? userName;
  final String? email;
  final String? password;
  final String? confirmPassword;
  final Status? status;

  RegisterState({
    this.userName,
    this.email,
    this.password,
    this.confirmPassword,
    this.status,
  });

  RegisterState copyWith({
    String? userName,
    String? email,
    String? password,
    String? confirmPassword,
    Status? status,
  }) =>
      RegisterState(
        userName: userName ?? this.userName,
        email: email ?? this.email,
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        status: status ?? this.status,
      );

  @override
  String toString() {
    return "userName:$userName email:$email pass:$password confass :$confirmPassword";
  }
}

enum Status {
  loading,
  error,
  done,
}

class SignUpRequest {
  SignUpRequest({
    required this.email,
    required this.password,
    required this.passwordConfirm,
  });

  final String email;
  final String password;
  final String passwordConfirm;
}

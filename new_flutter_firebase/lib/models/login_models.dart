class LoginModels {
  final String? email;
  final String? password;

  const LoginModels({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}

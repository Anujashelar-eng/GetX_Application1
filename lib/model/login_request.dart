class LoginRequest {
  LoginRequest({
    required this.mobileNumber,
    required this.password,
  });

  final String? mobileNumber;
  final String? password;

  LoginRequest copyWith({
    String? mobileNumber,
    String? password,
  }) {
    return LoginRequest(
      mobileNumber: mobileNumber ?? this.mobileNumber,
      password: password ?? this.password,
    );
  }

  factory LoginRequest.fromJson(Map<String, dynamic> json) {
    return LoginRequest(
      mobileNumber: json["MobileNumber"],
      password: json["Password"],
    );
  }

  Map<String, dynamic> toJson() => {
    "MobileNumber": mobileNumber,
    "Password": password,
  };
}
class LoginResponseDto {
  final String lastName;
  final String firstName;
  final String email;
  final String token;

  const new({
    required this.lastName,
    required this.firstName,
    required this.email,
    required this.token,
  });

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) {
    return LoginResponseDto(
      lastName: json['lastName'],
      firstName: json['firstName'],
      email: json['email'],
      token: json['token'],
    );
  }
}

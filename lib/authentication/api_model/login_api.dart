// import 'dart:convert';

// class LoginResponseModel {}

// class LoginRequestModel {
//   String email;
//   String password;

//   LoginRequestModel({required this.email, required this.password});

  

//   Map<String, dynamic> toMap() {
//     return {
//       'email': email.trim(),
//       'password': password.trim(),
//     };
//   }

//   factory LoginRequestModel.fromMap(Map<String, dynamic> map) {
//     return LoginRequestModel(
//       email: map['email'] ?? '',
//       password: map['password'] ?? '',
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory LoginRequestModel.fromJson(String source) => LoginRequestModel.fromMap(json.decode(source));
// }

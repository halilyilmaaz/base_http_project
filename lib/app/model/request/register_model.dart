// To parse this JSON data, do
//
//     final register = registerFromJson(jsonString);

import 'dart:convert';

Register registerFromJson(String str) => Register.fromJson(json.decode(str));

String registerToJson(Register data) => json.encode(data.toJson());

class Register {
    Register({
        
        this.email,
        this.password,
    });

    
    String? email;
    String? password;

    factory Register.fromJson(Map<String, dynamic> json) => Register(
        
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        
        "email": email,
        "password": password,
    };
}
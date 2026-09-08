import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getx_application1/model/login_request.dart';
import 'package:getx_application1/services/auth_services.dart';

class LoginController {
  final AuthService authService = AuthService();

  final TextEditingController mobileController =
  TextEditingController();

  final TextEditingController passwordController =
  TextEditingController();

  // Store login token
  String? token;

  Future<bool> login() async {
    final mobileNumber = mobileController.text.trim();
    final password = passwordController.text.trim();

    // Validation
    if (mobileNumber.isEmpty) {
      log("Please enter mobile number");
      return false;
    }

    if (password.isEmpty) {
      log("Please enter password");
      return false;
    }

    try {
      final loginRequest = LoginRequest(
        mobileNumber: mobileNumber,
        password: password,
      );

      // Call Login API
      final response = await authService.login(loginRequest);

      // Read response
      final data = response.data;

      log("API Response: $data");

      // Check API success
      if (data["Success"] == true) {
        log("Login successful");

        // Get token
        token = data["Token"];

        log("Token: $token");

        log("Message: ${data["Message"]}");
        log("OTP Flag: ${data["OtpFlag"]}");

        if (data["OtpFlag"] == true) {
          log("OTP sent successfully");
        }

        return true;
      } else {
        log("Login failed");
        log("Message: ${data["Message"]}");

        return false;
      }
    } catch (e) {
      log("Login Error: $e");

      return false;
    }
  }

  void dispose() {
    mobileController.dispose();
    passwordController.dispose();
  }
}
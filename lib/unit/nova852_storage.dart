import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final _storage = const FlutterSecureStorage();
  // late String role;
  // final String _baseUrl = AppConfig.baseURL;

  Future<void> saveToken(String token) async {
    await _storage.write(key: 'token', value: token);
  }
}
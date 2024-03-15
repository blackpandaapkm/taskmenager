import 'package:shared_preferences/shared_preferences.dart';
import '../style/style.dart';

Future<void> WriteUserData(Map<String, dynamic> userData) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', userData['token'] ?? '');
  await prefs.setString('email', userData['data']['email'] ?? '');
  await prefs.setString('firstname', userData['data']['firstname'] ?? '');
  await prefs.setString('lastname', userData['data']['lastname'] ?? '');
  await prefs.setString('mobile', userData['data']['mobile'] ?? '');
  await prefs.setString('photo', userData['data']['photo'] ?? '');

  // SuccessToast("Shared Success");
}

Future<String?> ReadUserData(String key) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(key);
}

Future<void>WriteEmailVerification(Email) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('EmailVerification',Email ?? '');

  SuccessToast("Shared Success");
}

Future<void>WriteOTPVerification(OTP) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('OTPVerification',OTP ?? '');

  // SuccessToast("Shared Success");
}

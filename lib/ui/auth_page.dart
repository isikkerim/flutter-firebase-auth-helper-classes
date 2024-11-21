import 'package:flutter/material.dart';
import '../auth/auth_service.dart';
import 'auth_buttons.dart';

class AuthPage extends StatelessWidget {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Auth Helper'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: AuthButtons(
                onCreateUser: () => _authService.createUserWithEmailAndPassword(
                    "test@test.com", "password"),
                onLogin: () => _authService.loginWithEmailAndPassword(
                    "test@test.com", "password"),
                onGoogleSignIn: () => _authService.googleSignIn(),
                onResetPassword: () =>
                    _authService.resetPassword("test@test.com"),
                onUpdatePassword: () =>
                    _authService.updatePassword("newpassword"),
                onLogout: () => _authService.logout(),
                onDeleteUser: () => _authService.userDelete(),
                onReAuthenticate: () => _authService.reAuthenticateUser(
                    "test@test.com", "password"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

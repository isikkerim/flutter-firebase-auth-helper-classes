import 'package:flutter/material.dart';

class AuthButtons extends StatelessWidget {
  final VoidCallback onCreateUser;
  final VoidCallback onLogin;
  final VoidCallback onGoogleSignIn;
  final VoidCallback onResetPassword;
  final VoidCallback onUpdatePassword;
  final VoidCallback onLogout;
  final VoidCallback onDeleteUser;
  final VoidCallback onReAuthenticate;

  const AuthButtons({super.key,
    required this.onCreateUser,
    required this.onLogin,
    required this.onGoogleSignIn,
    required this.onResetPassword,
    required this.onUpdatePassword,
    required this.onLogout,
    required this.onDeleteUser,
    required this.onReAuthenticate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: onCreateUser, child: const Text('Create User')),
        ElevatedButton(onPressed: onLogin, child: const Text('Login')),
        ElevatedButton(onPressed: onGoogleSignIn, child: const Text('Google Sign-In')),
        ElevatedButton(onPressed: onResetPassword, child: const Text('Reset Password')),
        ElevatedButton(onPressed: onUpdatePassword, child: const Text('Update Password')),
        ElevatedButton(onPressed: onLogout, child: const Text('Logout')),
        ElevatedButton(onPressed: onDeleteUser, child: const Text('Delete User')),
        ElevatedButton(onPressed: onReAuthenticate, child: const Text('Re-authenticate')),
      ],
    );
  }
}

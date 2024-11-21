import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  Stream<User?> authStateChanges();
  Future<User?> createUserWithEmailAndPassword(String email, String password);
  User? get currentUser;
  Future<User?> loginWithEmailAndPassword(String email, String password);
  Future<User?> googleSignIn();
  Future<void> resetPassword(String email);
  Future<void> updatePassword(String newPassword);
  Future<void> logout();
  Future<void> userDelete();
  Future<void> reAuthenticateUser(String email, String password);
}

import 'package:chat_application_backend/models/message.dart';
import 'package:chat_application_backend/models/user.dart';
import 'package:chat_application_backend/resources/firebase_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseRepository {

  FirebaseMethods _firebaseMethods = new FirebaseMethods();

  Future<FirebaseUser> getCurrentUser() => _firebaseMethods.getCurrentUser();

  Future<FirebaseUser> signInWithGoogle() => _firebaseMethods.signInWithGoogle();

  Future<bool> authenticateUser(FirebaseUser user) => _firebaseMethods.authenticateUser(user);

  Future<void> addUserToDatabase(FirebaseUser user) => _firebaseMethods.addUserToDatabase(user);

  Future<void> signOut() => _firebaseMethods.signOut();

  Future<List<User>> fetchAllUsers(FirebaseUser user) => _firebaseMethods.fetchAllUsers(user);

  Future<void> addMessageToDatabase(Message message, User sender, User receiver) => _firebaseMethods.addMessageToDatabase(message, sender, receiver);

}
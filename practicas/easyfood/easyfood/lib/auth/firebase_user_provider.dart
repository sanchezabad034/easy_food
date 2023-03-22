import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EasyfoodFirebaseUser {
  EasyfoodFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

EasyfoodFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EasyfoodFirebaseUser> easyfoodFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EasyfoodFirebaseUser>(
      (user) {
        currentUser = EasyfoodFirebaseUser(user);
        return currentUser!;
      },
    );

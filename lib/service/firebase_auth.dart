import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user.dart';
import '../utils/logger.dart';

class UserAuthentication {
  final _auth = FirebaseAuth.instance;
  final database = FirebaseFirestore.instance.collection('users');
  FirebaseAuth get auth => _auth;

  Future<void> createUser({
    required String email,
    required String password,
    required String phone,
    required String name,
    required String homeAddress,
    required String state,
  }) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then(
        (value) async {
          final user = Farmer(
              name: name,
              phone: phone,
              homeAddress: homeAddress,
              state: state,
              typeOfFarmer: '',
              email: value.user!.email!);
          final userToJson = user.toMap();
          database.doc(value.user?.email).set(userToJson);
          await getUser(value.user?.email);
        },
      );
    } on FirebaseAuthException catch (e) {
      logger.d(e.message);
    }
  }

  Future<Farmer?> getUser(value) async {
    final docRef = database.doc(value);
    final info = await docRef.get();
    return Farmer.fromMap(info.data()!);
  }

  Future<void> verifyPhone(String phoneNo, String code) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (PhoneAuthCredential credential) async {
        try {
          await FirebaseAuth.instance.signInWithCredential(credential);
        } on FirebaseAuthException catch (e) {
          logger.d(e.message);
        }
      },
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationID, int? resendToken) async {
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: verificationID, smsCode: code);
        try {
          await FirebaseAuth.instance.signInWithCredential(credential);
        } on FirebaseAuthException catch (e) {
          logger.d(e.message);
        }
      },
      codeAutoRetrievalTimeout: (String verificationID) {},
      timeout: const Duration(seconds: 60),
    );
  }

  Future<void> signInUser(String mail, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: mail, password: password);
    } on FirebaseAuthException catch (e) {
      logger.e(e.message);
    }
  }

  setUserType() async {
    try {
      await database.doc(auth.currentUser?.email).set({'typeOfFarmer': 'Fish'});
    } catch (e) {
      logger.d(e);
    }
  }
}

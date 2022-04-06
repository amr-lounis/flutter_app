import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../utils/settings_services.dart';

class UserController extends GetxController {
  int count = 0;

  void countInc() {
    count++;
    update();
  }

  void ListUsers() async {
    print('----------------- ********************* -------------------');
    try {
      // await FirebaseFirestore.instance.collection('users').get().then((value) {
      //   value.docs.forEach((element) {
      //     var data = element.data();
      //     print(data['name']);
      //     print('-----------------------------------------------------------');
      //   });
      // });

      // await FirebaseFirestore.instance
      //     .collection('users')
      //     .doc('KuR1KQC3fnAWZ80nAFB')
      //     .get()
      //     .then((value) {
      //   if (value.exists) {
      //     print(value.data());
      //   } else {
      //     print('------------ non data ------------');
      //   }
      //   print('-----------------------------------------------------------');
      // });
//arrayContains //
//.where('name', whereNotIn: [11,11,11,
//orderBy
      // await FirebaseFirestore.instance
      //     .collection('users')
      //     .where('name', isEqualTo: '')
      //     .get()
      //     .then((value) {
      //   value.docs.forEach((element) {
      //     print(element.data());
      //   });

      //   print('-----------------------------------------------------------');
      // });

      // FirebaseFirestore.instance
      //     .collection('users')
      //     .snapshots()
      //     .listen((event) {
      //   event.docs.forEach((element) {
      //     print(element.data());
      //     print('---------------');
      //   });
      // });
    } catch (e) {
      print(e);
    }
  }

  static int index = 0;
  void addUsers() async {
    index++;
    var r = FirebaseFirestore.instance.collection('users');
    r.add({
      'name': 'amin ${index}',
    });
    // r.doc('01232313515').set({
    //   'name': 'amin ${index}',
    // });
    // r.doc('01232313515').update({
    //   'name': 'amin ${index}',
    // });
    // r.doc('01232313515').set({
    //   'name': 'amin ${index}',
    // }, SetOptions(merge: true)).then((value) {
    //   print("object");
    // }).catchError((e) {
    //   print("error");
    // });

    // var userdoc = r.doc('01232313515');
    // FirebaseFirestore.instance
    //     .runTransaction((tr) async {
    //       DocumentSnapshot ds = await tr.get(userdoc);

    //       if (ds.exists) {
    //         var v = ds.data();
    //         tr.update(userdoc, {'name': 'null'});
    //       } else {
    //         print('');
    //       }
    //     })
    //     .then((value) => print("Follower count updated to $value"))
    //     .catchError(
    //         (error) => print("Failed to update user followers: $error"));

    // WriteBatch batch = FirebaseFirestore.instance.batch();
    // batch.update(
    //   r.doc('01232313515'),
    //   {
    //     'name': 'ssss',
    //     'dddd': '555',
    //   },
    // );
    // batch.update(
    //   r.doc('01232313515'),
    //   {
    //     'jklmkmk': 'ssss',
    //     'www': '555',
    //   },
    // );

    // batch.commit();
  }

  final SettingServices ss = Get.find();

  // GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  // FirebaseAuth _auth = FirebaseAuth.instance;
  String? email, password, name;

  Future<bool> signInAnonymously() async {
    try {
      UserCredential result = await FirebaseAuth.instance.signInAnonymously();
      print(result);
      return (result != null);
    } catch (eror) {
      return false;
    }
  }

  getUser() async {
    var result = await FirebaseAuth.instance.currentUser;
    print(result);
    return result;
  }

  Future<bool> signInEmail() async {
    try {
      UserCredential result;
      result = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'lounisamar1212@gmail.com',
        password: '123123123',
      );
      print(result);
      print(result.user!.emailVerified);

      User? user = FirebaseAuth.instance.currentUser;

      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
      } else {
        print('email is Verified');
      }

      return (result != null);
    } on FirebaseAuthException catch (e) {
      print(e.code);
      return false;
    } catch (eror) {
      return false;
    }
  }

  Future<bool> signUpEmail() async {
    print("log --------------  signUp");
    try {
      UserCredential result =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "lounisamar121@gmail.com",
        password: "password",
      );
      print(result);
      return (result != null);
    } on FirebaseAuthException catch (e) {
      print(e.code);
      return false;
    } catch (eror) {
      return false;
    }
  }

  void googleSignInMethod() async {
    try {
      // await _googleSignIn.signIn();
      // print(googleUser);
      // GoogleSignInAuthentication googleSignInAuthentication =
      //     await googleUser!.authentication;

      // final AuthCredential credential = GoogleAuthProvider.credential(
      //   idToken: googleSignInAuthentication.idToken,
      //   accessToken: googleSignInAuthentication.accessToken,
      // );

      // await _auth.signInWithCredential(credential).then((user) {
      //   print(user);
      //   // saveUser(user);
      //   // Get.offAll(HomeView());
      // });
    } catch (e) {
      print(e);
    }
  }
  //   void saveUser(UserCredential user) async {
  //   await FireStoreUser().addUserToFireStore(UserModel(
  //     userId: user.user.uid,
  //     email: user.user.email,
  //     name: name == null ? user.user.displayName : name,
  //     pic: '',
  //   ));
  // }
}

import 'package:edutech/app/ui/prefs/shared_prefs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

String? name;
String? email;
String? imageUrl;
String? uid;
int? sId;
Future<String?> signInWithGoogle() async {
  print("start");
  await Firebase.initializeApp();

  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

  print("credential");
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;

  print("credential");
  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  print("credential");
  final UserCredential authResult = await _auth.signInWithCredential(credential);

  final User? user = authResult.user;

  print("user");

  if (user != null) {
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final User? currentUser = _auth.currentUser;
    assert(user.uid == currentUser!.uid);

    print("signInWithGoogle succeeded : $user");

    // Checking if email and name is null
    assert(user.email != null);
    assert(user.displayName != null);
    assert(user.photoURL != null);

    setAccountObject(
      uid: user.uid,
      email: user.email,
      imageURL: user.photoURL,
      name: user.displayName,
    );
    // getAccountObject();
    setLoggedIn();

    return "$user";
  }

  return null;
}

void signOutGoogle() async {
  await googleSignIn.signOut();
  print("User Signed Out");
}

Future<void> getAccountObject() async {
  name = await getName();
  email = await getEmail();
  imageUrl = await getImageURL();
  uid = await getUid();
}

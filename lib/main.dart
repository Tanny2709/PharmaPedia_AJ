import 'package:flutter/material.dart';
import 'package:pktech/screens/qr_scanner.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:pktech/screens/registration_screen.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:pktech/screens/home_screen.dart';
import 'package:mobile_scanner/mobile_scanner.dart';


  void main() {
     // Initialize the plugin.
    runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PharmaPedia',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Registration(),
    );
  }
}

/*class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _register() async {
    try {
      final UserCredential userCredential =
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      final User user = userCredential.user!;
      // User signed up successfully, you can redirect or show a success message.
      print('User registered with UID: ${user.uid}');
    } catch (e) {
      // Handle registration errors, e.g., email already exists.
      print('Registration error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: _register,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
*/
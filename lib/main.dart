import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:inhouse/Data%20Models/address.dart';
import 'package:inhouse/Data%20Models/users.dart';
import 'package:inhouse/phone_auth.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
    webProvider: ReCaptchaV3Provider('recaptcha-v3-site-key'),
    androidProvider: AndroidProvider.playIntegrity,
    appleProvider: AppleProvider.appAttest,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhoneAuth(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  void loadData() async {
    // final uri = Uri.https('jsonplaceholder.typicode.com', 'todos/');
    // http.Response res = await http.get(uri);
    // print(res.statusCode);
    // if(res.statusCode == 200) {
    //   print(res.statusCode);
    // } else {
    //   print(res.body);
    // }

    User user1 = User(id: 5, username: 'username', email: 'email', name: 'name', address: );
  }
  @override
  void initState() {
    // print('test');
    // loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


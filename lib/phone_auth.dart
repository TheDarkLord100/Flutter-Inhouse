import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inhouse/otp_screen.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({super.key});

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Phone Auth"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              controller: phoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () async {
                String phone = "+917318470477";
                print(phone);
                await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: phone,
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException ex) {
                      print(ex.code.toString());
                      print(ex.message.toString());
                    },
                    codeSent: (String veriID, int? token) {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => OTPScreen(
                                verificationId: veriID,
                              )));
                    },
                    codeAutoRetrievalTimeout: (String veriId) {});
              },
              child: Text('Test'))
        ],
      ),
    );
  }
}

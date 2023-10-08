import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe/screens/apple_pay_screen.dart';
import 'package:stripe/screens/google_pay_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: const Text("Google Pay"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return GooglePayScreen();
              }));
            },
          ),
          ListTile(
            title: const Text("Apple Pay"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ApplePayScreen();
              }));
            },)
        ],
      ),
    );
  }
}
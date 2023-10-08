import 'package:flutter/material.dart';
import 'package:pay/pay.dart' as pay;
import '../widgets/custom_scaffold.dart';

class GooglePayScreen extends StatefulWidget {
  const GooglePayScreen({super.key});

  @override
  State<GooglePayScreen> createState() => _GooglePayScreenState();
}

class _GooglePayScreenState extends State<GooglePayScreen> {
  
   @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void update() {
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return ExampleScaffold(
      title: 'Google Pay',
      padding: EdgeInsets.all(16),
      tags: ['Android', 'Pay plugin'],
      children: [
        pay.GooglePayButton(
          paymentConfiguration: pay.PaymentConfiguration.fromJsonString(
            '',
          ),
          
          margin: const EdgeInsets.only(top: 15),
         
          loadingIndicator: const Center(
            child: CircularProgressIndicator(),
          ),
          onPressed: () async {},
          childOnError: Text('Google Pay is not available in this device'),
          onError: (e) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                    'There was an error while trying to perform the payment'),
              ),
            );
          }, onPaymentResult: (Map<String, dynamic> result) {  }, paymentItems: [],
        ),
      ],
    );
  }
}
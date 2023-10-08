import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe/widgets/custom_scaffold.dart';

class ApplePayScreen extends StatefulWidget {
  const ApplePayScreen({super.key});

  @override
  State<ApplePayScreen> createState() => _ApplePayScreenState();
}

class _ApplePayScreenState extends State<ApplePayScreen> {
  
  @override
   void initState() {
    Stripe.instance.isPlatformPaySupportedListenable.addListener(update);
    super.initState();
  }

  @override
  void dispose() {
    Stripe.instance.isPlatformPaySupportedListenable.removeListener(update);
    super.dispose();
  }

  void update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ExampleScaffold(
      title: "Apple Pay",
      tags: ["ios"],
      padding: EdgeInsets.all(10),
      children: [
        if (Stripe.instance.isPlatformPaySupportedListenable.value)
          PlatformPayButton(
            type: PlatformButtonType.pay,
            appearance: PlatformButtonStyle.whiteOutline,
            onPressed: () => (){}
          )
        else
          Text('Apple Pay is not available in this device'),
      ],
    );
  }
}
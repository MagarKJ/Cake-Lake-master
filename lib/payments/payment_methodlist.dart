import 'package:flutter/material.dart';

class Payment {
  final String image;
  final String name;
  final String subtitle;

  Payment({
    required this.image,
    required this.name,
    required this.subtitle,
  });
}

class PaymentOptions extends StatelessWidget {
  static List<Payment> getPayment() {
    return [
      Payment(
        image: 'assets/image/payment_opt/visa.jpg',
        name: 'Visa Classic',
        subtitle: '****7690',
      ),
      Payment(
        image: 'assets/image/payment_opt/eshewa.jpg',
        name: 'eSewa',
        subtitle: 'Pay using eSewa digital wallet',
      ),
      Payment(
        image: 'assets/image/payment_opt/khalti.jpg',
        name: 'Khalti',
        subtitle: 'Pay using Khalti digital wallet',
      ),
      Payment(
        image: 'assets/image/payment_opt/COD.jpg',
        name: 'Cash on Delivery',
        subtitle: 'Pay in cash upon delivery',
      ),
    ];
  }

  const PaymentOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

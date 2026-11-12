import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_app_bar.dart';
import 'package:payment/features/visa/presentation/views/widgets/visa_view_body.dart';

class VisaView extends StatelessWidget {
  const VisaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Visa'),
      body: SafeArea(child: VisaViewBody()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:payment/features/success/presentation/views/widgets/custom_half_side_circle.dart';
import 'package:payment/features/success/presentation/views/widgets/dash_line.dart';
import 'package:payment/features/success/presentation/views/widgets/success_body.dart';
import 'package:payment/features/success/presentation/views/widgets/success_container_style.dart';
import 'package:payment/features/success/presentation/views/widgets/true_check_mark.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SuccessContainerStyle(),
          Positioned(left: 0, right: 0, top: -50, child: TrueCheckMark()),
          SuccessBody(),
          CustomHalfSideCircle(left: -20),
          CustomHalfSideCircle(right: -20),
          Positioned(
            left: 20 + 8,
            right: 20 + 8,
            bottom: MediaQuery.of(context).size.height * 0.2 + 20,
            child: DashLine(),
          ),
        ],
      ),
    );
  }
}

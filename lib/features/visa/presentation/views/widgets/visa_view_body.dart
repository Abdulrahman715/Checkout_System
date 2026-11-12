import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/success/presentation/views/success_view.dart';
import 'package:payment/features/visa/presentation/views/widgets/payment_method_list_view.dart';
import 'package:payment/features/visa/presentation/views/widgets/visa_card_form.dart';

class VisaViewBody extends StatefulWidget {
  const VisaViewBody({super.key});

  @override
  State<VisaViewBody> createState() => _VisaViewBodyState();
}

class _VisaViewBodyState extends State<VisaViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: PaymentMethodListView()),
        SliverToBoxAdapter(
          child: VisaCardForm(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomButton(
                text: 'pay',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // Process payment
                    formKey.currentState!.save();
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SuccessView(),
                      ),
                    );
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

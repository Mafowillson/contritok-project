import 'package:contritok/constants/images.dart';
import 'package:contritok/widgets/custom_button.dart';
import 'package:contritok/widgets/glass_box.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  late final TextEditingController _codeController;

  @override
  void initState() {
    _codeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Verify Email',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 200),
              GlassBox(
                width: MediaQuery.of(context).size.height,
                height: MediaQuery.of(context).size.height / 2.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Please enter the 4 digit verification code sent to example@gmail.com',
                    ),
                    PinCodeTextField(
                      controller: _codeController,
                      appContext: context,
                      length: 4,
                      autoFocus: true,
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                        activeColor: Colors.black,
                        inactiveColor: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend Code',
                        style: TextStyle(color: Colors.blue[200]),
                      ),
                    ),
                    const SizedBox(height: 40),
                    CustomButton(
                      onPressed: () {},
                      text: 'Confirm',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

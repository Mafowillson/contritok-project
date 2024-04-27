import 'package:contritok/constants/images.dart';
import 'package:contritok/widgets/custom_button.dart';
import 'package:contritok/widgets/custom_text_field.dart';
import 'package:contritok/widgets/glass_box.dart';
import 'package:flutter/material.dart';


class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  late final TextEditingController _password;
  late final TextEditingController _confirmPassword;

  @override
  void initState() {
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _password.dispose();
    _confirmPassword.dispose();
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
                'Reset Password',
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
                    CustomTextField(
                      controller: _password,
                      hintText: 'Enter new password',
                      obscureText: false,
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      controller: _confirmPassword,
                      hintText: 'confirm password',
                      obscureText: false,
                    ),
                    const SizedBox(height: 40),
                    CustomButton(
                      onPressed: () {},
                      text: 'LogIn',
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

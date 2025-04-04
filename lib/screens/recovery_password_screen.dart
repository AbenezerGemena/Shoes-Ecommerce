import 'package:flutter/material.dart';
import 'package:shoes/widgets/custom_button.dart';
import 'package:shoes/widgets/custom_form_field.dart';


class RecoveryPasswordScreen extends StatefulWidget {
  const RecoveryPasswordScreen({super.key});

  @override
  State<RecoveryPasswordScreen> createState() => _RecoveryPasswordScreenState();
}

class _RecoveryPasswordScreenState extends State<RecoveryPasswordScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  void handleContinue() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });

      // Simulate API call
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          isLoading = false;
        });
        // Navigate or show success message
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Column(
                  children: [
                    Text(
                      "Recovery Password",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Please enter your email to receive a verification code",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              CustomFormField(
                hintText: "Email Address",
                title: "Email Address",
                obscureText: false,
                validationRegExp: RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"),
                onSaved: (value) {},
              ),
              const SizedBox(height: 30),

              CustomButton(
                color: Color(0xFF5B9EE1), 
                onPressed: (){},
                 child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                ),)
                )
              
            ],
          ),
        ),
      ),
    );
  }
}

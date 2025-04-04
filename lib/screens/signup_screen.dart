import 'package:flutter/material.dart';
import 'package:shoes/core/constants.dart';
import 'package:shoes/core/themes.dart';
import 'package:shoes/core/utils.dart';
import 'package:shoes/widgets/custom_button.dart';
import 'package:shoes/widgets/custom_form_field.dart';
import 'package:shoes/widgets/custom_google_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
   
  @override
 @override
Widget build(BuildContext context) {
  Size screenSize = Utils().getScreenSize(context);

  return Scaffold(
    resizeToAvoidBottomInset: true,
    backgroundColor: backgrounColor,
    body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.1,
            vertical: screenSize.height * 0.08,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  "Let's Create Account Together",
                  style: TextStyle(
                    fontSize: 16,
                
                    color: Color(0xFF707B81)
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.03),

              /// Custom Fields Section
              Column(
                children: [
                  CustomFormField(
                    title: 'Your Name',
                    hintText: "Name",
                    validationRegExp: NAME_VALIDATION_REGEX,
                    onSaved: (value) {},
                  ),
                  CustomFormField(
                    title: 'Email Address',
                    hintText: "Email",
                    validationRegExp: EMAIL_VALIDATION_REGEX,
                    onSaved: (value) {},
                  ),
                  CustomFormField(
                    title: 'Password',
                    hintText: "Password",
                    validationRegExp: PASSWORD_VALIDATION_REGEX,
                    onSaved: (value) {},
                    suffixIcon: IconButton(
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.visibility_off
                      )
                      )
                  ),
                ],
              ),
              SizedBox(height: screenSize.height*0.01,),
             CustomButton(
              color: Color(0xFF5B9EE1), 
              onPressed: (){},
              child: const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white
                ),
                
              )
              ),
              SizedBox(height: screenSize.height*0.03,),
              CustomGoogleButton(
                color: Colors.white, 
                onPressed: (){},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    Image.network(

                      googleLogo,
                      height: 24,

                    ),
                    SizedBox(width: screenSize.width*0.01,),

                    Text(
                      'Sign Up with Google',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),
                    ),

                 
                    

                    
                  ],
                )
                ),
                 SizedBox(height: screenSize.height*0.1,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already Have An Account?',
                          style: TextStyle(
                            color: Color(0xFF707B81),
                            fontSize: 12
                          ),
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),
                          ),
                        )
                      ],
                    )
              
            ],
          ),
        ),
      ),
    ),
  );
}

}



import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shoes/core/constants.dart';
import 'package:shoes/core/themes.dart';
import 'package:shoes/core/utils.dart';
import 'package:shoes/routes/navigator_rout.dart';
import 'package:shoes/widgets/custom_button.dart';
import 'package:shoes/widgets/custom_form_field.dart';
import 'package:shoes/widgets/custom_google_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GetIt _getIt = GetIt.instance;
  late NavigatorRout _navigatorRout;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController  = TextEditingController();

  bool _passwordVisible = false;

  String? email, password,name;

  void _togglePasswordVisibility(){
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
   
  }
  @override
  void initState() {
    super.initState();
    _navigatorRout = _getIt.get<NavigatorRout>();
  }

  @override
  void dispose() {
    
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }
   
  @override
 @override
Widget build(BuildContext context) {
  Size screenSize = Utils().getScreenSize(context);

  return Scaffold(
    resizeToAvoidBottomInset: true,
    backgroundColor: backgrounColor,
    body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.08,
          vertical: screenSize.height * 0.08,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: (){
                      _navigatorRout.goBack();
                    }, 
                    icon: Icon(Icons.chevron_left)
                    ),
                ),
              ),
              SizedBox(height: screenSize.height*0.02,),

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
                    controller:_nameController ,
                    title: 'Your Name',
                    hintText: "Name",
                    validationRegExp: NAME_VALIDATION_REGEX,
                    onSaved: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  CustomFormField(
                    controller: _emailController,
                    title: 'Email Address',
                    hintText: "Email",
                    validationRegExp: EMAIL_VALIDATION_REGEX,
                    onSaved: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                  CustomFormField(
                    controller: _passwordController,
                    title: 'Password',
                    hintText: "Password",
                    validationRegExp: PASSWORD_VALIDATION_REGEX,
                    obscureText: !_passwordVisible,
                    onSaved: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    suffixIcon: IconButton(
                      onPressed: _togglePasswordVisibility, 
                      icon: Icon(
                         _passwordVisible?Icons.visibility:Icons.visibility_off
                      )
                      )
                  ),
                ],
              ),
              SizedBox(height: screenSize.height*0.035,),
             CustomButton(
              color: Color(0xFF5B9EE1), 
              onPressed: (){
                if(_formKey.currentState?.validate()??false){
                  _formKey.currentState?.save();
                  _navigatorRout.pushReplacementNamed("/home");
                  
                }
                
              },
              child: const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white
                ),
                
              )
              ),
              SizedBox(height: screenSize.height*0.022,),
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
                 SizedBox(height: screenSize.height*0.07,),
              
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
                          onPressed: (){
                           _navigatorRout.pushNamed("/login");
                          },
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



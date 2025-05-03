import 'package:flutter/material.dart';
import 'package:shoes/core/constants.dart';
import 'package:shoes/core/themes.dart';
import 'package:shoes/core/utils.dart';
import 'package:shoes/widgets/custom_form_field.dart';

class ProfielScreen extends StatefulWidget {
  const ProfielScreen({super.key});

  @override
  State<ProfielScreen> createState() => _ProfielScreenState();
}

class _ProfielScreenState extends State<ProfielScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController  = TextEditingController();

  late Size screenSize;
  String? email, password,name;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    screenSize = Utils().getScreenSize(context);
    return Scaffold(
      backgroundColor: backgrounColor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: screenSize.width*0.05,
            vertical: screenSize.height*0.013
          ),
          child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: (){}, 
                          icon: Icon(Icons.chevron_left),
                          
                          ),
                      ),
              
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
              
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: (){}, 
                          icon: Icon(Icons.edit)
                          ),
                      )
                    ],
                  ),
                  SizedBox(height: screenSize.height*0.025,),

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                        clipBehavior: Clip.none,
                        children: [
                        Container(
                          height: screenSize.height*0.2,
                          width: screenSize.width*0.45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.shade50
                          ),
                          child: ClipOval(
                            child: Image.network(
                              'https://static.vecteezy.com/system/resources/previews/029/271/062/non_2x/avatar-profile-icon-in-flat-style-male-user-profile-illustration-on-isolated-background-man-profile-sign-business-concept-vector.jpg',
                              fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -10,
                          left: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: IconButton(
                              onPressed: (){}, 
                              icon: Icon(Icons.camera_alt_outlined),
                              color: Colors.white,
                              ),
                          ),
                        )
                        ],
                    
                      ),
                      SizedBox(height: screenSize.height*0.02,),
                    
                      Text(
                        'Alission Backer',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      SizedBox(height: screenSize.height*0.02,),
                      
                      CustomFormField(
                          hintText: 'Name', 
                          title: 'Full Name', 
                          validationRegExp: NAME_VALIDATION_REGEX, 
                          controller: _nameController, 
                          onSaved: (value){
                            name = value;
                          }
                          ),
                      CustomFormField(
                        hintText: "email", 
                        title: 'Email Addres', 
                        validationRegExp: EMAIL_VALIDATION_REGEX, 
                        controller: _emailController, 
                        onSaved: (value){
                          setState(() {
                            email = value;
                          });
                        }
                        ),
                        CustomFormField(
                          hintText: 'Password', 
                          title: "Password", 
                          validationRegExp: PASSWORD_VALIDATION_REGEX, 
                          controller: _passwordController, 
                          onSaved: (value){
                            password = value;

                          }
                          )

                    
                      ],
                    ),
                  )






                ],
              ),
                




            
          
          
          ),
        )
        
    );
  }
}
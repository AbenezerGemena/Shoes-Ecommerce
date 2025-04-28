import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:shoes/core/themes.dart';
import 'package:shoes/core/utils.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  late Size screenSize;
  @override
  Widget build(BuildContext context) {
    screenSize = Utils().getScreenSize(context);
    return Scaffold(
      backgroundColor: backgrounColor,
      body: Stack(
        children: [
          Padding(
            padding:EdgeInsets.symmetric(
              horizontal:screenSize.width*0.05,
              vertical: screenSize.height*0.06
            ),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.chevron_left)
                        ),
                    ),
                  
                    SizedBox(width: screenSize.width*0.25,),
                  
                    Text(
                      'Checkout',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                    
                  ],
                )
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: screenSize.width,
              height: screenSize.height*0.35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)
              ),

              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width*0.04,
                  vertical: screenSize.height*0.025
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF707B81)
                          ),
                        ),
                
                        Text(
                          '\$234.12',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        )
                
                      ],
                    ),
                    SizedBox(height: screenSize.height*0.02,),
                
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shopping',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF707B81)
                          ),
                        ),
                
                        Text(
                          '\$40.43',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        )
                
                      ],
                    ),
                
                    SizedBox(height: screenSize.height*0.04,),
                
                    DottedLine(
                      dashColor: Color(0xFFEEEEEE),
                      lineThickness: 3,
                      dashLength: 6,
                      
                
                    ),
                    SizedBox(height: screenSize.height*0.01,),
                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Cost',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                            ),
                         ),
                
                         Text(
                          '\$1440.234',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                         )
                      ],
                    ),
                    SizedBox(height: screenSize.height*0.028,),
                
                    ElevatedButton(
                      onPressed: (){}, 
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        fixedSize: Size(screenSize.width,screenSize.height*0.07)
                      ),
                
                      child: Text(
                        'Payment',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )
                      )
                
                
                
                    
                
                  ],
                ),
              ),
            )
            )
      
        ],
      ),

    );
  }
}
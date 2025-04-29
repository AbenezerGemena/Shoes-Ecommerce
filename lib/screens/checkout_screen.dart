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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.05,
            vertical: screenSize.height * 0.02
          ),
          
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: IconButton(
                        onPressed: () {
                          
                        },
                        icon: Icon(Icons.chevron_left)),
                  ),
                  SizedBox(width: screenSize.width * 0.25),
                  Text(
                    'Checkout',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(height: screenSize.height*0.04,),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(child: _checkoutbuild()),
                )
                ),
           
          
              
          
            ],
          
                ),
        ),

      ),

      bottomNavigationBar: Container(
        width: screenSize.width,
        height: screenSize.height * 0.35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.04,
              vertical: screenSize.height * 0.025),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: TextStyle(fontSize: 16, color: Color(0xFF707B81)),
                  ),
                  Text(
                    '\$234.12',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: screenSize.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping',
                    style: TextStyle(fontSize: 16, color: Color(0xFF707B81)),
                  ),
                  Text(
                    '\$40.43',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: screenSize.height * 0.04),
              DottedLine(
                dashColor: Color(0xFFEEEEEE),
                lineThickness: 3,
                dashLength: 6,
              ),
              SizedBox(height: screenSize.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Cost',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$1440.23',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: screenSize.height * 0.025),
              ElevatedButton(
                onPressed: () {
                  showCongratulationMessage(context);
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: Size(screenSize.width, screenSize.height * 0.07),
                ),
                child: Text(
                  'Payment',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),

             
            ],
          ),
        ),
      ),
    );
  }

  Widget _checkoutbuild(){
    return Container(
      width: screenSize.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width*0.05,
          vertical: screenSize.height*0.02
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'contact Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenSize.height*0.045,
                    width: screenSize.width*0.09,
                    decoration: BoxDecoration(
                      color: backgrounColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
              
                    child: IconButton(
                      padding: EdgeInsets.zero, 
                      constraints: BoxConstraints(),
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.email_outlined,
                        
                      )
                      ),
              
                      
                      
                  ),
              
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
                    children: [
                      Text(
                        'emailofpoduct@gmail.com'
                      ),
              
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF707B81)
                        ),
                      )
                    ],
                  ),
              
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(
                      Icons.edit
                    )
                    )
                ],
              ),
              SizedBox(height: screenSize.height*0.005,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenSize.height*0.045,
                    width: screenSize.width*0.09,
                    decoration: BoxDecoration(
                      color: backgrounColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
              
                    child: IconButton(
                      padding: EdgeInsets.zero, 
                      constraints: BoxConstraints(),
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.phone,
                        
                      )
                      ),
              
                      
                      
                  ),
              
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                    children: [
                      Text(
                        '+88-745-347-234'
                      ),
                  
                      Text(
                        'Phone',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF707B81)
                        ),
                      )
                    ],
                  ),
              
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(
                      Icons.edit
                    )
                    )
                ],
              ),
              SizedBox(height:screenSize.height*0.008 ,),
              
              Text(
                'Address',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Newahall st36 , London 12908 -UK',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF707B81)
                    ),
                  ),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(
                      Icons.keyboard_arrow_down
                    )
                    )
                ],
              ),
              
              Container(
                width: screenSize.width,
                height: screenSize.height*0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://www.shutterstock.com/image-illustration/generic-city-map-navigation-260nw-1907750230.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          
              Text(
                'Paymant Method',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenSize.height*0.045,
                    width: screenSize.width*0.09,
                    decoration: BoxDecoration(
                      color: backgrounColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
              
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://pngimg.com/d/paypal_PNG7.png',
                        fit: BoxFit.cover,
                      ),
                    )
              
                      
                      
                  ),
              
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
                    children: [
                      Text(
                        'PayPal card'
                      ),
              
                      Text(
                        '.........324834754068564',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF707B81)
                        ),
                      )
                    ],
                  ),
              
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(
                      Icons.keyboard_arrow_down
                    )
                    )
                ],
              ),
               
          
            
          
               
            ],
              
          ),
        ),
      ),
    
    );
  }

  void showCongratulationMessage(BuildContext context){
    showDialog(
    context: context, 
    builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width*0.01,
            vertical: screenSize.height*0.05
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                 
                  shape: BoxShape.circle
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.network(
                    'https://www.shutterstock.com/image-vector/exploding-party-popper-confetti-bright-600nw-1292838640.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            
              Text(
                "Your Payment Is\n \t\tSuccessful",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20
                ),
              ),
              SizedBox(height: screenSize.height*0.025,),
          
              ElevatedButton(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: Size(screenSize.width, screenSize.height*0.06)
                ),
                child: Text(
                  'Back To Shopping',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                    
                  ),
                )
                )
            ],
          ),
        ),

      );

    }
    );

  }


 
}
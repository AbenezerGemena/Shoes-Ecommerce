import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:shoes/core/constants.dart';
import 'package:shoes/core/themes.dart';
import 'package:shoes/core/utils.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  late Size screenSize;
  int itemNuber = 1;
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
                      'My Cart',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                    
                  ],
                ),

                _cartItemBuild()



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
                    SizedBox(height: screenSize.height*0.025,),
                
                    ElevatedButton(
                      onPressed: (){}, 
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        fixedSize: Size(screenSize.width,screenSize.height*0.07)
                      ),
                
                      child: Text(
                        'Checkout',
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

  Widget _cartItemBuild(){
    return Expanded(
      child: ListView.builder(
        itemCount: cartList.length,
        itemBuilder: (context, index){
          final item = cartList[index];
          return Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: screenSize.width*0.01,
              vertical: screenSize.height*0.02
            ),
            child: SizedBox(
              width: screenSize.width,
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    
                    
                    ),
                    
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        item.imageUrl,
                        fit: BoxFit.cover,
                        
                      ),
                    ),
                  
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            item.productName,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                  
                            ),
                  
                          ),
                          Text(
                            '\$ ${item.price}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                            
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                
                                backgroundColor: Colors.white,
                                child: IconButton(
                                  onPressed: (){}, 
                                  icon: Icon(Icons.remove)
                                  ),
                              ),
                              SizedBox(width: 10,),
                              
                              
                  
                                Text(
                                  '$itemNuber',
                  
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                  
                                ),
                                 SizedBox(width: 10,),
                  
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  
                                 
                                  child: IconButton(
                                    onPressed: (){}, 
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    
                                    )
                                    ),
                                )
                  
                                
                            ],
                          )
                        ],
                      )
                  
                    ],
                  ),
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.size,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                  
                      IconButton(
                        onPressed: (){}, 
                        icon: Icon(
                          Icons.delete_outline_rounded,
                          color:  Color(0xFF707B81),
                          size: 35,
                        )
                        )
                  
                    ],
                  )
                  
                  
                ],
                  
              ),
            ),
          );
      
        }
        ),
    );
  }
}
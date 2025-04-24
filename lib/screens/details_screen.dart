import 'package:flutter/material.dart';
import 'package:shoes/core/themes.dart';
import 'package:shoes/core/utils.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize =  Utils().getScreenSize(context);
    return Scaffold(
      backgroundColor: backgrounColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(
            horizontal:screenSize.width*0.05,
            vertical: screenSize.height*0.06,

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white ,
                    child: IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.chevron_left),
                      
                      ),
                  ),
                  Center(
                    child:Text(
                      "Man's Shoes",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ) ,
                  ),

                    
                      
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.shopping_bag_outlined)
                      ),
                    ),
                                          
                  
                
              
                  
                ],
                      
              
              ),

              _buildProductImage()
        
          ],
        ),
      ),

    );
  }

  Widget _buildProductImage(){
    return  Container(
      child: Icon(Icons.linear_scale, color: Colors.blue[200]),

    );
  }
}


import 'package:flutter/material.dart';
import 'package:shoes/core/themes.dart';
import 'package:shoes/core/utils.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late Size screenSize;
 
  @override
  Widget build(BuildContext context) {
    screenSize = Utils().getScreenSize(context);
    
    return Scaffold(
      backgroundColor: backgrounColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(
               horizontal:screenSize.width*0.05,
               vertical: screenSize.height*0.06,
            ),
            child: Row(
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
          ),

       
      
            _buildProductImage(),
            Expanded(child: _buildingDiscrptionAndOtherPart()),
            _addCartButtomWithPrice()
      
        ],
      ),

    );
  }

  Widget _buildProductImage(){
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: screenSize.width*0.03,
        vertical: screenSize.height*0.02
      ),
      child: SizedBox(
        width: double.infinity,
        height: screenSize.height*0.2,
        
       
        child: Image.network(
          'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
          fit: BoxFit.contain,
        ),
      
      ),
    );
  }

  Widget _buildingDiscrptionAndOtherPart(){
    return Container(
      width: screenSize.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35)
        )
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _discriptionPartColumn(),
        ),
        
             
        
        
        ),
      
     

    );

  }

  Widget _discriptionPartColumn(){
    return SizedBox(

      width: screenSize.width*0.9 ,

      child: Padding(

        padding: const EdgeInsets.only(
          top: 9
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
          
            Text(
            'BEST SELLER',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        SizedBox(height: 6),
                    // Title
        Text(
         'Nike Air Jordan',
         style:TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
        SizedBox(height: 6),
                    // Price
        Text(
         '\$967.800',
         style:TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        SizedBox(height: 10),
                    // Description
        Text(
          'Air Jordan is an American brand of basketball\nshoes athletic, casual, and style clothing\nproduced by Nike...',
          style: TextStyle(color: Colors.grey[600]),
                      ),
                      SizedBox(
          height: screenSize.height*0.025,
                      ),
                      Text(
          "Gallery", 
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
            )
         ),
         SizedBox(height: screenSize.height*0.01,),
        Row(
          children: [
              _buildThumbnail(),
              _buildThumbnail(),
              _buildThumbnail(),
                ],
            ),
        SizedBox(height: screenSize.height*0.01,),
        
        Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         mainAxisSize: MainAxisSize.max,
        
         children: [
           Text(
             'Size',
             style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.bold,
             ),
           ),
           Text("EU  US  UK"),
         ],
                    ),
                    SizedBox(height: screenSize.height*0.01,),
        
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: List.generate(6, (index) {
         bool isSelected = index == 2;
         return GestureDetector(
           onTap: () {
             // handle selection
           },
           child: CircleAvatar(
             radius: 24,
             backgroundColor: isSelected ? Colors.blue : Colors.grey[200],
             child: Text(
               '${38 + index}',
               style: TextStyle(
                 color: isSelected ? Colors.white : Colors.black,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ),
         );
                    }),
                  ),
        
                  SizedBox(height: screenSize.height*0.09,),
        
                
        
        
                  
                  ],
                
                ),
      
       
      ),
    );

  }

  Widget _addCartButtomWithPrice(){
    return Container(
      width: screenSize.width,
      height: screenSize.height*0.09,
     
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.grey.shade400,
            blurStyle: BlurStyle.outer,
            offset: Offset.zero

          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [

              Text(
                'Price',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF707B81)
                ),
              ),
              Text(
                '\$967.800',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ],
          ),

          ElevatedButton(
            onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(
                    horizontal: 30, vertical: 12),
                minimumSize: Size(103, 55)
               
            ),
            child: Text(
              'Add To Cart',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18
              ),
            )
            )


          
        ],
      
      ),
    );
  }



  Widget _buildThumbnail() {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          image: DecorationImage(
            image: NetworkImage(
              'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
            ),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }


  
}
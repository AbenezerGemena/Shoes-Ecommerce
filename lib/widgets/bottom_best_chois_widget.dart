import 'package:flutter/material.dart';
import 'package:shoes/core/constants.dart';
import 'package:shoes/core/utils.dart';

class BottomBestChoisWidget extends StatelessWidget {
  const BottomBestChoisWidget({super.key});

  @override
  Widget build(BuildContext context) {
     Size screenSize = Utils().getScreenSize(context);
    return SizedBox(
      height: screenSize.height * 0.18,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: products.length,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final product = bottomProduct[index];
          return _buildBottomCard(context, product); // Pass context here
        },
      ),
    );
  }

  Widget _buildBottomCard(BuildContext context,Map<String, dynamic> bottomProduct){
    Size screenSize = Utils().getScreenSize(context);
    return Container(
      width: screenSize.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 6,
              offset: const Offset(0, 4))
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
        
          children: [
        
            SizedBox(
              width: screenSize.width/2,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "BEST CHOICE",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
              
                    ),
                  ),
                  Text(
              
                    bottomProduct["name"],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "\$${bottomProduct["price"].toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                      ),
                    
                  ),
                
                ],
              ),
            ),

            Expanded(
              child: Image.network(
                bottomProduct["image"],
                // height: screenSize.height*0.08,
                fit: BoxFit.cover,
              ),
            ),
        
         
         
        
          ],
        ),
      ),
    
      

    );
  }
}
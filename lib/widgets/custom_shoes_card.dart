import 'package:flutter/material.dart';
import 'package:shoes/core/constants.dart';
import 'package:shoes/core/utils.dart';

class CustomShoesCard extends StatelessWidget {
  const CustomShoesCard({super.key});
  
  // BuildContext get context;
  

 @override
  Widget build(BuildContext context) {
    Size screenSize =  Utils().getScreenSize(context);
    
    return SizedBox(
      height: screenSize.height*0.3,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: products.length,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final product = products[index];
          return _buildProductCard(product);
        },
      ),
    );
  }

  Widget _buildProductCard(Map<String, dynamic> product) {
    
    return Container(
      width:160 ,
      padding: const EdgeInsets.all(12),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              product["image"],
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
         
          const Text(
            "BEST SELLER",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            product["name"],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "\$${product["price"].toStringAsFixed(2)}",
            style: const TextStyle(fontSize: 14),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.blue.shade400,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: const Icon(Icons.add, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
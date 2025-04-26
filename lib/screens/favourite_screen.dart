import 'package:flutter/material.dart';
import 'package:shoes/core/constants.dart';
import 'package:shoes/core/themes.dart';
import 'package:shoes/core/utils.dart';
import 'package:shoes/models/product_mode.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  late Size screenSize;
  @override
  Widget build(BuildContext context) {
    screenSize = Utils().getScreenSize(context);
    return Scaffold(
      backgroundColor: backgrounColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal:screenSize.width*0.05,
          vertical: screenSize.height*0.06
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.chevron_left)
                    ),
                ),

                Text(
                  'Favourite',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),

                ),
        
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.favorite_border)
                    ),
                )
              ],
            ),
            Expanded(child: _productsWithfavouriteIcon())
        
          ],
        ),
      ),
    );
  }


  Widget _productsWithfavouriteIcon(){
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.68,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,

        ), 
        itemCount: productsModels.length,
          itemBuilder: (context, index) {
            final product = productsModels[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              product.isFavorite = !product.isFavorite;
                            });
                          },
                          child: Icon(
                            product.isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: product.isFavorite ? Colors.red : Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Center(
                        child: Image.network(
                          product.imageUrl,
                          fit: BoxFit.contain,
                          width: 100,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'BEST SELLER',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '\$${product.price.toStringAsFixed(1)}',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: product.colors
                          .map((color) => Container(
                                margin: const EdgeInsets.only(right: 5),
                                width: 14,
                                height: 14,
                                decoration: BoxDecoration(
                                  color: color,
                                  shape: BoxShape.circle,
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            );
          },
      );
  }
}
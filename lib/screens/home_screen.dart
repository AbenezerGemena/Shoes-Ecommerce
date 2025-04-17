import 'package:flutter/material.dart';
import 'package:shoes/core/constants.dart';
import 'package:shoes/core/themes.dart';
import 'package:shoes/core/utils.dart';
import 'package:shoes/widgets/bottom_best_chois_widget.dart';
import 'package:shoes/widgets/custom_shoes_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return Scaffold(
      
      backgroundColor: backgrounColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal:screenSize.width*0.05,
            vertical: screenSize.height*0.06,
            
          ),
          child: Column(
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white ,
                    child: IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.grid_view_sharp),
                      
                      ),
                  ),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Store Location',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF707B81),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 2,
                              vertical: 1
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                  size: 15,
                                  ),
                                Text(
                                  'Adama, Oromia',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                      
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.shopping_bag_outlined)
                          ),
                        ),
                      
                        Positioned(
                          right: 4,
                          top: 4,
                          
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.red,
                          )
                          )
                            
                            
                      ],
                    )
                
              
                  
                ],
                      
              
              ),
              SizedBox(height: screenSize.height*0.044,),
              _searchBar(),
              SizedBox(height: screenSize.height*0.044,),
              _shoesBrandBanner(),
              SizedBox(height: screenSize.height*0.044,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Shoes",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                        ),
                      
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF5B9EE1),
                          fontWeight: FontWeight.normal
                        ),
                      )
                    ],
                  ),
        
                 
        
                 
                ],
              ),
              SizedBox(height: screenSize.height*0.015,),
        
              CustomShoesCard(),
              SizedBox(height: screenSize.height*0.044,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New Arrivals",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                        ),
                      
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF5B9EE1),
                          fontWeight: FontWeight.normal
                        ),
                      )
                    ],
                  ),
        
                 
        
                 
                ],
              ),
              SizedBox(height: screenSize.height*0.015,),

              BottomBestChoisWidget()
              
              
        
        
            ],
          ),
        ),
      ),
    
      
    );

  }
  Widget _searchBar(){
    return TextField(
      decoration: InputDecoration(
        hintText: "Looking for shoe",
        prefixIcon: Icon(Icons.search),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        )
      ),

    );
  }

  Widget _shoesBrandBanner() {
  Size screenSize = Utils().getScreenSize(context);
  return SizedBox(
    height: screenSize.height*0.05,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: productBrands.length,
      separatorBuilder: (_, __) => const SizedBox(width: 10),
      itemBuilder: (context, index) {
        final brand = productBrands[index];
        final isSelected = selectedIndex == index;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            padding: isSelected
                ? const EdgeInsets.symmetric(horizontal: 12, vertical: 6)
                : const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isSelected ? Colors.blue.shade100 : Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                if (!isSelected)
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 4,
                  ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  brand["image"]!,
                  height: 30,
                  width: 30,
                  fit: BoxFit.contain,
                ),
                if (isSelected) ...[
                  const SizedBox(width: 8),
                  Text(
                    brand["name"]!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    ),
  );
}


}
import 'package:flutter/material.dart';
import 'package:shoes/core/themes.dart';
import 'package:shoes/core/utils.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  late Size screenSize;
  @override
  Widget build(BuildContext context) {
    screenSize = Utils().getScreenSize(context);
    return Scaffold(
      backgroundColor: backgrounColor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: screenSize.width*0.06,
            vertical: screenSize.height*0.013
            
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        'Notfications',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                           
                        },
                      
                        child: Text(
                          'Clear All',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16
                          ),
                        ),
                      )
              
                   
                    ],
                  ),
                  SizedBox(height: screenSize.height*0.03,),

                  Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  _todayNotification()
              
            ],
          ),
        )
        ),

    );
  }

  Widget _todayNotification(){
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://cdn.dotpe.in/longtail/item_thumbnails/8626525/aYNL0QnV-400-400.webp',
              fit: BoxFit.cover,
            ),
          ),
        )
      ],

    );
  }
}
import 'package:flutter/material.dart';



class Post extends StatelessWidget {
 
  final String user;
  Post({required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //Profile
       Padding(
        padding: const EdgeInsets.all(16.0),

       child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
            children: [
               Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle
              ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(user,
        style: TextStyle(fontWeight: FontWeight.bold),
        )
            ],
           )
           ,
        Icon(Icons.menu)
          ],
        ),
       ),
        //Post 
        Container(
      height: 200,
      color: Colors.grey,
      ),
      //ABAIXO DO POST
      Padding(
        padding: const EdgeInsets.all(16.0),
        child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                 child:  Icon(Icons.chat_bubble_outline),
              ),
         
            Icon(Icons.share),
            ],
          ),
          
             Icon(Icons.bookmark),
        ],
      ),
      ),
     
      ],
    );
  }
}
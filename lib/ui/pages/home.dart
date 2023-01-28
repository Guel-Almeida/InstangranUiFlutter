import 'package:flutter/material.dart';
import 'package:instaui/util/Post.dart';
import 'package:instaui/util/Story.dart';

class Home extends StatelessWidget {
 
  final List people = ['Anderson','Miguel','Pedro','Sebastião','Ferraz','Alfredo','Insvania'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Instagran", style:TextStyle(color: Colors.black),),
          Row(children: [
            Icon(Icons.add),
          Padding(padding: const EdgeInsets.all(8.0),
          child:  Icon(Icons.favorite)),
           Icon(Icons.share),
          ],)
        ],),
      ),
      body:  Column(
        children: [
          //Story
          Container(
            height: 130,
            child:  ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return Story(text: people[index]);
              }
              ),
          ),
          //Post 
          Expanded(
            
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
              return  Post(user: people[index]);
            }), 
          )
         
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:uee_assignment/models/user.dart';

class RecentContacts extends StatelessWidget {
  final contactList = User.generateUsers();

  //const RecentContacts({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical:25),
      padding: const EdgeInsets.only(left:25),
      height: 50,
      child:Row(
        children:[
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color:Colors.white.withOpacity(0.3),
              shape:BoxShape.circle),
            child: Icon(
              Icons.search,
              size:30,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => 
                Container(
                  child:Image.asset(contactList[index].iconUrl),
                ), 
                separatorBuilder: (_, index) => SizedBox(width:15),
                itemCount: contactList.length),
          )
      ],),
    );
  }
}

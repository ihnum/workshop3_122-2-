import 'package:flutter/material.dart';

import '../models/freiends.dart';


class Friend extends StatefulWidget {
  const Friend({super.key});

  @override
  State<Friend> createState() => _FriendState();
}

class _FriendState extends State<Friend> {

  Color _getCardColor(String type) {
    switch (type) {
      case "เชียร์":
        return Colors.lightBlueAccent;
      case "ปูน":
        return Colors.greenAccent;
      case "โอเว่น":
        return Colors.orangeAccent;
      default:
        return Colors.grey[200]!;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: emp.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: _getCardColor(emp[index].name),
          ),
          margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    emp[index].name, 
                    style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "ชื่อเล่น: ${emp[index].nickname}",
                    style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold), 
                  ),
                  Text(
                    "อายุ: ${emp[index].age} ",
                    style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold), 
                  ),
                  Text(
                    "อาหารที่ชอบ: ${emp[index].fevfood} ",
                    style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold), 
                  ),              
                  Text(
                    "เลขที่ชอบ: ${emp[index].fevnumber} ",
                    style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold), 
                  ),                                                       
                ],
              ),
              Image.asset(
                emp[index].friendpic.image,
                width: 70,
                height: 70,
              ),
            ],
          ),
        );
      },
    );
  }
}

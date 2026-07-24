import 'package:flutter/material.dart';

import '../models/foodmenu.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {

  Color _getCardColor(String type) {
    switch (type) {
      case "ต้ม":
        return Colors.lightBlueAccent;
      case "ผัก":
        return Colors.greenAccent;
      case "ย่าง":
        return Colors.orangeAccent;
      case "ทอด":
        return Colors.redAccent;
      case "อบ":
        return Colors.amberAccent;
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
            color: _getCardColor(emp[index].type),
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
                    //style: GoogleFonts.itim(
                          //textStyle: const TextStyle(
                          //fontSize: 25,
                          //fontWeight: FontWeight.bold,
                          //color: Colors.white,
                    style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "ประเภทอาหาร: ${emp[index].type}",
                    style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold), 
                  ),
                  Text(
                    "ราคา: ${emp[index].price} บาท",
                    style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold), 
                  ),           
                ],
              ),
              Image.asset(
                emp[index].foodpic.image,
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

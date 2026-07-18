enum Friendpic {menu1(image: "assets/images/8.jpg"),
 menu2(image: "assets/images/9.jpg"),
 menu3(image: "assets/images/10.jpg");
 
  const Friendpic({required this.image});
  final String image;
}

class FriendsMenu {
  FriendsMenu({
    required this.name,
    required this.nickname,
    required this.age,
    required this.fevfood,
    required this.fevnumber,
    required this.friendpic,});
  String name;
  String nickname;
  int age;
  String fevfood;
  int fevnumber;
  Friendpic friendpic;
}

List<FriendsMenu> emp = [
  FriendsMenu(
    name: "อรรถพล",
    nickname: "เชียร์",
    age: 21,
    fevfood: "เนื้อสัตว์",
    fevnumber: 8,
    friendpic: Friendpic.menu1,
  ),
  FriendsMenu(
    name: "ธนเวช",
    nickname: "ปูน",
    age: 21,
    fevfood: "บร็อคโคลี่",
    fevnumber: 4,
    friendpic: Friendpic.menu2,
  ),
  FriendsMenu(
    name: "สิริชัย",
    nickname: "โอเว่น",
    age: 21,
    fevfood: "เนื้อสัตว์",
    fevnumber: 58,
    friendpic: Friendpic.menu3,
  ),  
];
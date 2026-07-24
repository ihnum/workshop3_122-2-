enum Foodpic {menu1(image: "assets/images/1.png"),
 menu2(image: "assets/images/2.png"),
 menu3(image: "assets/images/3.png"),
 menu4(image: "assets/images/4.png"),
 menu5(image: "assets/images/5.png"),
 menu6(image: "assets/images/6.png"),
 menu7(image: "assets/images/7.png");
 
  const Foodpic({required this.image});
  final String image;
}

class FoodMenu {
  FoodMenu({
    required this.name,
    required this.type,
    required this.components,
    required this.price,
    required this.foodpic,});
  String name;
  String type;
  String components;
  int price;
  Foodpic foodpic;
}

List<FoodMenu> emp = [
  FoodMenu(
    name: "สุกี้",
    type: "ต้ม",
    components: "ไข่, ผัก, เนื้อสัตว์",
    price: 299,
    foodpic: Foodpic.menu1,
  ),
  FoodMenu(
    name: "ผัก",
    type: "ผัก",
    components: "แครอท, มะเขือเทศ, บร็อคโคลี่",
    price: 199,
    foodpic: Foodpic.menu2,
  ),
  FoodMenu(
    name: "สเต็ก",
    type: "ย่าง",
    components: "เนื้อสัตว์, ผัก, ซอส",
    price: 299,
    foodpic: Foodpic.menu3,
  ),
  FoodMenu(
    name: "สเต็ก",
    type: "ย่าง",
    components: "เนื้อสัตว์, เฟรนช์ฟราย, ซอส",
    price: 299,
    foodpic: Foodpic.menu4,
  ),
  FoodMenu(
    name: "เบอร์เกอร์",
    type: "ทอด",
    components: "เนื้อสัตว์, ผัก, ซอส, ขนมปัง",
    price: 299,
    foodpic: Foodpic.menu5,
  ),
  FoodMenu(
    name: "พิซซ่า",
    type: "อบ",
    components: "แป้ง, ชีส, ซอส",
    price: 299,
    foodpic: Foodpic.menu6,
  ),
  FoodMenu(
    name: "ราเมง",
    type: "ต้ม",
    components: "เนื้อสัตว์, เส้น, น้ำซุป",
    price: 299,
    foodpic: Foodpic.menu7,
  ),
];
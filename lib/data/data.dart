import 'package:flutter/material.dart';

class ShoeData {
  int id;
  String name;
  String description;
  String price;
  String image;
  Color backgroundColor;
  String tagLine;

  ShoeData(
      {required this.description,
      required this.id,
      required this.image,
      required this.name,
      required this.price,
      required this.tagLine,
      required this.backgroundColor});
}

List<ShoeData> shoesData = [
  ShoeData(
    id: 1,
    description:
        "* البراند : هواوي\n* الموديل ميت بوك X برو 2020\n * شاشة بحجم 13.9 بوصة بدقة 3K \n* الذاكرة العشوائية (رام) 16 جيجا بايت",
    name: "Huawei MateBook X Pro",
    image: "images/airpod.png",
    price: "3600",
    tagLine: "Ram 8 / 16GB \n 512GB SSD \n يدعم اللمس",
    backgroundColor: Color(0xffFFE5C4),
  ),
  ShoeData(
    id: 12,
    description:
        "البراند : هواوي  الموديل \n ميت بوك \n X برو 2020 \n  حجم الشاشة شاشة عرض كاملة تعمل باللمس بحجم 13.9 بوصة بدقة 3K (3000×2000) \n الذاكرة العشوائية (رام) 16 جيجا بايت",
    name: " HP Pavilion 15",
    image: "images/2.png",
    price: "3100",
    tagLine: "Ram 8 / 16GB \n 512GB SSD \n يدعم اللمس",
    backgroundColor: Color(0xff60afdc),
  ),
  ShoeData(
    id: 12,
    description:
        "البراند : هواوي  الموديل \n ميت بوك \n X برو 2020 \n  حجم الشاشة شاشة عرض كاملة تعمل باللمس بحجم 13.9 بوصة بدقة 3K (3000×2000) \n الذاكرة العشوائية (رام) 16 جيجا بايت",
    name: "ASUS Gaming",
    image: "images/asus.png",
    price: "3400",
    tagLine: "Ram 8 / 16GB \n 512GB SSD \n يدعم اللمس",
    backgroundColor: Color(0xffcaccd1),
  ),
  ShoeData(
    id: 3,
    description:
        "البراند : هواوي  الموديل \n ميت بوك \n X برو 2020 \n  حجم الشاشة شاشة عرض كاملة تعمل باللمس بحجم 13.9 بوصة بدقة 3K (3000×2000) \n الذاكرة العشوائية (رام) 16 جيجا بايت",
    name: "ThinkPad X1 Carbon",
    image: "images/4.png",
    price: "4900",
    tagLine: "Ram 8 / 16GB \n 512GB SSD \n يدعم اللمس",
    backgroundColor: Color(0xff48a9c5),
  ),
  ShoeData(
    id: 4,
    description:
        "* البراند : هواوي\n* الموديل ميت بوك X برو 2020\n * شاشة بحجم 13.9 بوصة بدقة 3K \n* الذاكرة العشوائية (رام) 16 جيجا بايت",
    name: "Huawei MateBook 14S",
    image: "images/d15.png",
    price: "3600",
    tagLine: "Ram 8 / 16GB \n 512GB SSD \n يدعم اللمس",
    backgroundColor: Color(0xffFFE5C4),
  ),
];

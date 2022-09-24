import 'package:flutter/material.dart';

import 'package:shop/constants/constants.dart';
import 'package:shop/data/data.dart';
import 'package:shop/widgets/custom_icon_button.dart';
import 'package:shop/widgets/like_button.dart';

class DetailScreen extends StatefulWidget {
  final ShoeData shoeData;
  final String tag;
  DetailScreen({required this.shoeData, required this.tag});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<String> sizeRam = [
    "16GB",
    "8GB",
  ];

  int selectedTag = 0;

  Widget buildSizeTags(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTag = index;
        });
      },
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          color: selectedTag == index ? kBlueColor : Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            sizeRam[index],
            style: TextStyle(
              color: selectedTag != index ? kBlueColor : Colors.grey[100],
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }

  List<String> sizeSSD = [
    "256GB",
    "512GB",
    "1T",
  ];
  int selectedSSD = 0;

  Widget _selectedSSD(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSSD = index;
        });
      },
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          color: selectedSSD == index ? kBlueColor : Colors.grey[100],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            sizeSSD[index],
            style: TextStyle(
              color: selectedSSD != index ? kBlueColor : Colors.grey[100],
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: kBlueColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_shopping_cart,
              color: kBlueColor,
              size: 30,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: widget.shoeData.backgroundColor,
                      ),
                      child: Hero(
                          tag: "${widget.shoeData.id}",
                          child: Image.asset(widget.shoeData.image)),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: likeButton(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(widget.shoeData.name,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text("حجم الرام",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: sizeRam.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          buildSizeTags(index),
                          SizedBox(width: 10),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Text("حجم الهاردسك",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: sizeSSD.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          _selectedSSD(index),
                          SizedBox(width: 10),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "المواصفات",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.shoeData.description,
                          // maxLines: 2,
                          style: TextStyle(fontSize: 18, color: kBlueColor)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    customIconButtom(
                      backgroundColor: kBlueColor,
                      child: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                        size: 20,
                      ),
                      onTap: () {},
                      radius: BorderRadius.circular(25),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

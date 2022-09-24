import 'package:flutter/material.dart';
import 'package:shop/Screens/DetailsSCreen.dart';
import 'package:shop/Screens/cartPage.dart';
import 'package:shop/constants/constants.dart';
import 'package:shop/data/data.dart';
import 'package:shop/widgets/custom_icon_button.dart';

import '../widgets/shoe_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _tags = ["الكل", "لابتوب", "رام", "هاردسك", "شنط"];
  int selectedTag = 0;

  Widget _buildTags(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTag = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: selectedTag == index ? kBlueColor : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          _tags[index],
          style: TextStyle(
            color: selectedTag != index ? Colors.grey[400] : Colors.white,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Color(0xff4c53a5),
          type: BottomNavigationBarType.fixed,
          elevation: 20.0,
          currentIndex: currentIndex, // يحدد الصفحة
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
            print(index);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الريسية'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'الملف الشخصي'),
          ]),
      appBar: AppBar(
        backgroundColor: Colors.white38,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => cartPage())));
              },
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: kBlueColor,
              ))
        ],
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: kBlueColor,
            )),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            labelText: "بحث ...",
                            contentPadding: EdgeInsets.zero,
                            filled: true,
                            fillColor: Colors.grey[100],
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    customIconButtom(
                      backgroundColor: kBlueColor,
                      child: Image.asset(
                        'images/filter.png',
                      ),
                      onTap: () {},
                      radius: BorderRadius.circular(12),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _tags
                      .asMap()
                      .entries
                      .map((MapEntry map) => _buildTags(map.key))
                      .toList(),
                ),
                SizedBox(height: 25),
                _shoeListView()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _shoeListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: shoesData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        shoeData: shoesData[index],
                        tag: '',
                      ),
                    ),
                  );
                },
                child: ShoeCard(
                  shoe: shoesData[index],
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          );
        });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/Screens/home.dart';

class CartAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Color(0xff4c53a5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'رجوع',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4c53a5),
                ),
              ),
            ),
            Spacer(),
            Icon(
              Icons.more_vert,
              size: 30,
              color: Color(0xff4c53a5),
            ),
          ],
        ),
      ),
    );
  }
}

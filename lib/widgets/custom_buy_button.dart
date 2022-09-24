import 'package:flutter/material.dart';
import 'package:shop/constants/constants.dart';

Widget customBuyButtom() {
  return InkWell(
    borderRadius: BorderRadius.circular(12),
    onTap: () {},
    child: Container(
      width: 60,
      height: 30,
      decoration: new BoxDecoration(
        color: kBlueColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          "شراء",
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    ),
  );
}

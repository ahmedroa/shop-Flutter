import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/constants/constants.dart';

class CartItmeSamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // for (int i = 1; i < 2; i++)
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              // Radio(
              //   value: '',
              //   groupValue: '',
              //   activeColor: Color(0xff4c53a5),
              //   onChanged: (Index) {},
              // ),
              Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(right: 15),
                child: Image.asset('images/2.png'),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'HP Pavilion 15',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4c53a5),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '3.100',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kBlueColor),
                          ),
                          Text(
                            'ر.س',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kBlueColor),
                          ),
                        ],
                      ),
                    ]),
              ),
              SizedBox(
                width: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      )),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

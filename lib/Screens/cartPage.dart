import 'package:flutter/material.dart';
import 'package:shop/Screens/MasterCard.dart';

import 'package:shop/constants/constants.dart';
import 'package:shop/widgets/CartAppBar.dart';
import 'package:shop/widgets/CartItmeSamples.dart';

class cartPage extends StatelessWidget {
  // const cartPage({Key? key}) : super(key: key);

  @override
  bool light = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            child: Column(children: [
              CartItmeSamples(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                      width: 350,
                      child: Container(
                        height: 225,
                        width: 400,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text(
                                      'الكوبون',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.zero,
                                            filled: true,
                                            fillColor: Colors.grey[100],
                                            border: InputBorder.none,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'المجموع الفرعي ',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              width: 160,
                                            ),
                                            Text(
                                              '3.100',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: kBlueColor),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'رسوم الشحن',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'المجموع ',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              width: 190,
                                            ),
                                            Text(
                                              '3.100',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: kBlueColor),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 350,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => MasterCard())));
                        },
                        child: Text(
                          'إتمام عملية الشراء',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: kBlueColor,
                      ))
                ],
              ),
            ]),
          ),
        ],
      ),
      // bottomNavigationBar: cartbottomNavigation(),
    );
  }
}

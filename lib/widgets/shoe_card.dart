import 'package:flutter/material.dart';
import 'package:shop/data/data.dart';
import 'package:shop/widgets/custom_buy_button.dart';
import 'package:shop/widgets/like_button.dart';

class ShoeCard extends StatelessWidget {
  final ShoeData shoe;

  const ShoeCard({required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: shoe.backgroundColor,
        ),
        height: 180,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  likeButton(),
                  Center(
                    child: Container(
                      height: 120,
                      width: 140,
                      child: Hero(
                        tag: "${shoe.id}",
                        child: Image.asset(
                          shoe.image,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: shoe.name,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                          // text: '\nby Nike',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    shoe.tagLine,
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\ريال\ ${shoe.price}",
                        // style: Theme.of(context).textTheme.headline4),
                        style:
                            TextStyle(fontSize: 18, color: Color(0xffbe0027)),
                      ),
                      customBuyButtom()
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}

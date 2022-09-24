import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop/constants/constants.dart';

class MasterCard extends StatefulWidget {
  const MasterCard({Key? key}) : super(key: key);

  @override
  State<MasterCard> createState() => _MasterCardState();
}

class _MasterCardState extends State<MasterCard> {
  List<String> Paymentmethod = [
    "PayPal",
    "Master Card",
    "مدى",
    'STC Pay',
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
        width: 110,
        decoration: BoxDecoration(
          color: selectedTag == index ? kBlueColor : Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            Paymentmethod[index],
            style: TextStyle(
              color: selectedTag != index ? kBlueColor : Colors.grey[100],
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }

  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(
          'بيانات الدفع',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: kBlueColor),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مجموع المشتريات',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  '3.100.00',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: kBlueColor),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'ر.س',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: kBlueColor),
                ),
              ],
            ),
            Text(
              'طريقة الدفع أو السداد',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: Paymentmethod.length,
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
            SizedBox(
              height: 10,
            ),
            Text(
              'رقم البطاقة',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: kBlueColor),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.add_card_sharp),
                labelText: '**** **** **** ****',
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.grey[100],
                border: InputBorder.none,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 130,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'صلاحية الانتهاء',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kBlueColor),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          labelText: '  شهر / سنة ',
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Container(
                    width: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CVV',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kBlueColor),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            labelText: '   ***',
                            filled: true,
                            fillColor: Colors.grey[100],
                            border: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'حامل البطاقة',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: kBlueColor),
            ),
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
                Switch(
                  // This bool value toggles the switch.
                  value: light,
                  activeColor: kBlueColor,
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      light = value;
                    });
                  },
                ),
                Text(
                  'حفظ بيانات البطاقة',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kBlueColor),
                ),
              ],
            ),
            Container(
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'تابع للتأكيد',
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
      ),
    );
  }
}

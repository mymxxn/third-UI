// ignore_for_file: unnecessary_const

import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const third(),
  ));
}

class third extends StatelessWidget {
  const third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          leading: const Icon(Icons.arrow_back, color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[800],
          title: const Text(
            "Payments",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Padding(padding: const EdgeInsets.fromLTRB(20, 20, 20, 0)),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Transaction Limit",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "A free limit up to which you will recieve the online payments directly in your bank",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: LinearPercentIndicator(
                      lineHeight: 10.0,
                      percent: 0.4,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey[300],
                      progressColor: Colors.lightBlue[800],
                    ),
                  ),
                  const Text('36,668 left out of rs50,000'),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Increase limit',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
                title: const Text("Default Method",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
                trailing: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.spaceAround,
                  children: [
                    const Text(
                      "Online Payments",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.grey[600],
                      size: 32,
                    )
                  ],
                )),
            ListTile(
                title: const Text("Payment Profile",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                trailing: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Text(
                      "Bank Account",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.grey[600],
                      size: 32,
                    )
                  ],
                )),
            Divider(
              color: Colors.grey[300],
              thickness: 1,
            ),
            ListTile(
                title: const Text("Payments Overview",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
                trailing: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Text(
                      "Life Time",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.grey[600],
                          size: 32,
                        )),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("AMOUNT ON HOLD",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("₹0",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("AMOUNT RECIEVED",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("₹13,332",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500)),
                                ]),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Padding(padding: const EdgeInsets.all(10)),
                  const Text(
                    "Transactions",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 12),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(35))),
                        child: const Text(
                          "On hold",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 12),
                        width: 127,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(35))),
                        child: const Text(
                          "Payouts(15)",
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(35))),
                        child: const Text(
                          "Refunds",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  itemlist('assets/2.jpg', "₹899","₹899 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/3.jpg', "₹100","₹100 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/5.jpg', "₹200","₹200 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/one.jpg', "₹300","₹300 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/2.jpg', "₹400","₹400 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/3.jpg', "₹500","₹500 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/5.jpg', "₹600","₹600 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/one.jpg', "₹700","₹700 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/2.jpg', "₹800","₹800 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/3.jpg', "₹900","₹900 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/5.jpg', "₹1200","₹1200 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/one.jpg', "₹102","₹102 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/2.jpg', "₹890","₹890 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/3.jpg', "₹678","₹678 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/5.jpg', "₹456","₹456 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/one.jpg', "₹345","345 deposited to 58860200000138"),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  itemlist('assets/2.jpg', "₹123","₹123 deposited to 58860200000138"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget itemlist(String image, String amt,String ial) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Image.asset(
                    image,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order #1688068",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Text(
                    "Jul 12, 02:06 PM",
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(amt),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 15,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      const Text("Successful")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
         Text(ial, style:const TextStyle(fontWeight: FontWeight.w300, // light
    fontStyle: FontStyle.italic,),),
      ],
    );

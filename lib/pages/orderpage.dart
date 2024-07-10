import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderDetail extends StatefulWidget {
  final String imageproduto;
  final String nomeproduto;
  final String descrprod;

  const OrderDetail(
      {super.key,
      required this.imageproduto,
      required this.nomeproduto,
      required this.descrprod});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            'Order',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: const Color(0xFFF0F0F0)),
              width: 321,
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 154,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFFC67C4E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Deliver',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 154,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Text(
                          'Pick Up',
                          style: TextStyle(
                            color: Color(0xff2F2D2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 31),
          const SizedBox(
            width: 321,
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery Address',
                  style: TextStyle(
                    color: Color(0xff2F2D2C),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Jl. Kpg Sutoyo',
                  style: TextStyle(
                    color: Color(0xff2F2D2C),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                  style: TextStyle(
                    color: Color(0xFF808080),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Color(0xffDEDEDE)),
                        borderRadius: BorderRadius.circular(35)),
                    width: 101,
                    height: 27,
                    // color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Document.png',
                          width: 12,
                          height: 12,
                          fit: BoxFit.contain,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          'Edit Address',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Color(0xffDEDEDE)),
                        borderRadius: BorderRadius.circular(35)),
                    width: 101,
                    height: 27,
                    // color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Document.png',
                          width: 12,
                          height: 12,
                          fit: BoxFit.contain,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          'Add Note',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const SizedBox(
            width: 315,
            child: Divider(
              thickness: 0.8,
              color: Color(0xFFEAEAEA),
            ),
          ),
          SizedBox(
            height: 31,
          ),
          Container(
            width: 308,
            height: 54,
            child: Row(
              children: [
                Container(
                  width: 308,
                  height: 54,
                  child: Row(
                    children: [
                      Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          widget.imageproduto,
                          width: 54,
                          height: 54,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 7.5, bottom: 7.5, left: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.nomeproduto,
                                style: TextStyle(
                                    color: Color(0xff2F2D2C),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                              Text(
                                'with Chocolate',
                                style: TextStyle(
                                    color: Color(0xff9B9B9B),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: FittedBox(
                                  child: IconButton(
                                    icon: Icon(Icons.remove),
                                    onPressed: _decrementCounter,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                '$_counter',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: FittedBox(
                                  child: IconButton(
                                    icon: Icon(Icons.add),
                                    onPressed: _incrementCounter,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 21,
          ),
          SizedBox(
            width: 375,
            child: Divider(
              height: 3,
              thickness: 5,
              color: Color(0xffF4F4F4),
            ),
          )
        ]),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderDetail extends StatefulWidget {
  final String imageproduto;
  final String nomeproduto;
  final String descrprod;
  final String price;

  const OrderDetail(
      {super.key,
      required this.imageproduto,
      required this.nomeproduto,
      required this.descrprod,
      required this.price});

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
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              left: 0,
            ),
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
                          child: const Center(
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
                height: 92,
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
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
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
                            border: Border.all(
                                width: 1, color: const Color(0xffDEDEDE)),
                            borderRadius: BorderRadius.circular(35)),
                        width: 120,
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
                            border: Border.all(
                                width: 1, color: const Color(0xffDEDEDE)),
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
              const SizedBox(
                height: 31,
              ),
              SizedBox(
                width: 308,
                height: 54,
                child: Row(
                  children: [
                    SizedBox(
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
                                    style: const TextStyle(
                                        color: Color(0xff2F2D2C),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  ),
                                  const Text(
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                                        icon: const Icon(Icons.remove),
                                        onPressed: _decrementCounter,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    '$_counter',
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
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
                                        icon: const Icon(Icons.add),
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
              const SizedBox(
                height: 21,
              ),
              const SizedBox(
                width: 375,
                child: Divider(
                  height: 3,
                  thickness: 5,
                  color: Color(0xffF4F4F4),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      border: Border.all(color: Color(0xffEAEAEA), width: 1),
                      borderRadius: BorderRadius.circular(13)),
                  // color:
                  width: 315,
                  height: 56,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 18,
                          ),
                          Image.asset(
                            'assets/images/Discount.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            '1 Discount is applied',
                            style: TextStyle(
                                color: Color(0xff2F2D2C),
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_rounded)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26.0, top: 21, bottom: 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Payment Summary',
                        style: TextStyle(
                            color: Color(0xff2F2D2C),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14, top: 9),
                      child: SizedBox(
                        width: 315,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Price',
                                style: TextStyle(
                                    color: Color(0xff2F2D2C),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14)),
                            const SizedBox(width: 10),
                            Text(widget.price),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: SizedBox(
                        width: 315,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Delivery Fee'),
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Text('\$ 2.0 '),
                                const SizedBox(width: 10),
                                Text(
                                  '\$ 1.0',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 315,
                      child: Divider(
                        thickness: 0.8,
                        color: Color(0xFFEAEAEA),
                      ),
                    ),
                    SizedBox(
                      width: 315,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Payment',
                              style: TextStyle(
                                  color: Color(0xff2F2D2C),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                          SizedBox(width: 10),
                          Text('\$ 5.53'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.transparent,
                    border: Border.all(color: Color(0xffF1F1F1), width: 1.5)),
                // color: ,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 19),
                    Row(
                      children: [
                        const SizedBox(width: 30), // Adiciona margem esquerda
                        Image.asset(
                          'assets/images/moneys.png',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(
                            width:
                                22), // Espaço entre a imagem e o container "Cash"
                        Container(
                          width: 112,
                          height: 24,
                          child: Row(
                            children: [
                              Container(
                                width: 51,
                                height: 24,
                                // padding: const EdgeInsets.symmetric(
                                //     vertical: 8.0, horizontal: 16.0),
                                decoration: BoxDecoration(
                                  color: const Color(0xffC67C4E),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: const Text(
                                    'Cash',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                '\$5.53',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.more_horiz),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 22),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: SizedBox(
                        width: MediaQuery.of(context)
                            .size
                            .width, // Ajusta a largura para ocupar toda a largura disponível
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFC67C4E),
                            fixedSize: const Size(315, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Order',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Espaço abaixo do botão
                  ],
                ),
              ),
            ])));
  }
}

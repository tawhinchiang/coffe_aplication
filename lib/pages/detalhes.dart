import 'package:coffee_application/pages/orderpage.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {
  final String imageproduto;
  final String nomeproduto;
  final String descrprod;

  const Detalhes(
      {super.key,
      required this.imageproduto,
      required this.nomeproduto,
      required this.descrprod});

  @override
  State<Detalhes> createState() => _DetalhesState();
}

int selectedIndex = -1; // -1 indicates no selection

class _DetalhesState extends State<Detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Detail',
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xff2F2D2C)),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              icon: Image.asset('assets/images/heart2.png'),
              onPressed: () {
                // Ação do botão de coração
                //adiciona a aba de favoritos
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Container(
              width: 315,
              height: 226,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.grey),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                widget.imageproduto,
                width: 142,
                height: 132,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 31.0),
            child: Text(
              widget.nomeproduto,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 28, left: 31),
                child: const Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '4.8 (230)',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 28),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFF0F0),
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10)),
                      width: 44,
                      height: 44,
                      // color: const ,
                      child: Center(
                        child: Image.asset('assets/images/bean.png'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 28, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFF0F0),
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10)),
                      width: 44,
                      height: 44,
                      // color: const ,
                      child: Center(
                        child: Image.asset('assets/images/milk.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
                width: 315,
                child: const Divider(
                  color: Color(0xffEAEAEA),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 27, bottom: 15),
            child: Text(
              'Description',
              style: TextStyle(
                  color: Color(0xff2F2D2C),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Text(
              'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo...',
              style: TextStyle(
                color: Color(0xff9B9B9B),
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 22, bottom: 12),
            child: Text(
              'Size',
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff2F2D2C),
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = selectedIndex == 0 ? -1 : 0;
                      });
                    },
                    child: Container(
                      width: 96,
                      height: 43,
                      decoration: BoxDecoration(
                        color: selectedIndex == 0
                            ? Color(0xffC67C4E)
                            : Color(0xffFFFFFF),
                        border: Border.all(
                            color: const Color.fromARGB(255, 179, 179, 179),
                            width: 0.5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'S',
                          style: TextStyle(
                            color: selectedIndex == 0
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = selectedIndex == 1 ? -1 : 1;
                      });
                    },
                    child: Container(
                      width: 96,
                      height: 43,
                      decoration: BoxDecoration(
                        color: selectedIndex == 1
                            ? Color(0xffC67C4E)
                            : Color(0xffFFF5EE),
                        border:
                            Border.all(width: 0.5, color: Color(0xffC67C4E)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'M',
                          style: TextStyle(
                            color: selectedIndex == 1
                                ? Colors.white
                                : Color(0xffC67C4E),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = selectedIndex == 2 ? -1 : 2;
                      });
                    },
                    child: Container(
                      width: 96,
                      height: 43,
                      decoration: BoxDecoration(
                        color: selectedIndex == 2
                            ? Color(0xffC67C4E)
                            : Color(0xffFFFFFF),
                        border: Border.all(
                            color: const Color.fromARGB(255, 179, 179, 179),
                            width: 0.5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'L',
                          style: TextStyle(
                            color: selectedIndex == 2
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 39),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8,
                        ),
                        child: Text(
                          'Price',
                          style: TextStyle(
                              color: Color(0xff9B9B9B),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Text(
                        ' \$ 4.53',
                        style: TextStyle(
                            color: Color(0xffC67C4E),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 45),
                  child: SizedBox(
                    width: 217,
                    height: 55,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffC67C4E)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                18), // Less rounded corners
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDetail()));
                      },
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Text(
              widget.nomeproduto,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Row(
                  children: const [
                    Icon(Icons.star, color: Colors.amber),
                    SizedBox(width: 4),
                    Text(
                      '4.8 (230)',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
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
                    const SizedBox(width: 15),
                    Container(
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
                  ],
                ),
              ],
            ),
            const Divider(),
            Text(widget.descrprod),
          ],
        ),
      ),
    );
  }
}

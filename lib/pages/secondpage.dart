import 'package:coffee_application/pages/detalhes.dart';
import 'package:flutter/material.dart';

class SearchCoffe extends StatefulWidget {
  const SearchCoffe({super.key});

  @override
  SearchCoffeState createState() => SearchCoffeState();
}

class SearchCoffeState extends State<SearchCoffe> {
  String selectedCoffeeType = '';
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 0) {
      Navigator.pop(context);
    } else if (_selectedIndex == 1) {
    } else if (_selectedIndex == 2) {
    } else if (_selectedIndex == 3) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF131313),
                        Color(0xFF2A2A2A),
                        Color(0xFF2A2A2A),
                      ],
                      stops: [0.0, 0.5, 1.0],
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Espaço para simular o status bar
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 60.0, right: 30, left: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 161,
                              height: 40,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Location',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                  Text(
                                    'Araguaína, Tocantins',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 44,
                              height: 44,
                              child: Image.asset('assets/images/user.png'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 40),
                        child: Container(
                          width: double.infinity,
                          height: 52,
                          decoration: BoxDecoration(
                            color: const Color(0xFF313131),
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search Coffee',
                                    hintStyle: TextStyle(color: Colors.white54),
                                    prefixIcon:
                                        Icon(Icons.search, color: Colors.white),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(16.0),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 6),
                                child: Container(
                                  width: 40,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffC67C4E),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                    icon: const ImageIcon(
                                      AssetImage('assets/images/filtro.png'),
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      // Ação do botão de filtro
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xffF3F3F3),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.only(top: 140, left: 29, right: 29),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          spacing: 7.0,
                          runSpacing: 7.0,
                          children: [
                            _buildCoffeeTypeOption('Cappuccino'),
                            _buildCoffeeTypeOption('Macchiato'),
                            _buildCoffeeTypeOption('Latte'),
                            _buildCoffeeTypeOption('Espresso'),
                            // Adicione mais opções conforme necessário
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildCoffeeRow([
                        _buildCoffeeContainer(
                            'Cappuccino',
                            'Creamy and delicious',
                            'assets/images/leftside.png',
                            "\$4.53"),
                        _buildCoffeeContainer('Macchiato', 'Bold and smooth',
                            'assets/images/rightside.png', "\$4.53"),
                      ]),
                      const SizedBox(height: 20),
                      _buildCoffeeRow([
                        _buildCoffeeContainer('Latte', 'Silky and indulgent',
                            'assets/images/Group3150.png', "\$4.53"),
                        _buildCoffeeContainer('Espresso', 'Strong and aromatic',
                            'assets/images/Group3151.png', "\$4.53"),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 240,
              left: 31,
              right: 29,
              child: Container(
                width: 315,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/coffehorizont.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 13,
                      left: 20,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'PROMO',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      left: 35,
                      child: Stack(
                        children: [
                          // Fundo preto para metade da altura das letras
                          Positioned(
                            bottom: 5,
                            left: 0,
                            child: Container(
                              width: 135,
                              height: 22, // metade da altura das letras
                              decoration: BoxDecoration(
                                color: const Color(0xff1C1C1C),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 50,
                            child: Container(
                              width: 200,
                              height: 22, // metade da altura das letras
                              decoration: BoxDecoration(
                                color: const Color(0xff1C1C1C),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          // Texto
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 2),
                            child: const Text(
                              'Buy one get\none Free',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xffC67C4E),
            ),
            label: '',
            // Label vazia
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/heart.png',
              height: 18,
              width: 21,
            ),
            label: '', // Label vazia
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/bag2.png',
              height: 18,
              width: 21,
            ),
            label: '', // Label vazia
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/fill1.png',
              height: 18,
              width: 21,
            ),
            label: '', // Label vazia
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        showSelectedLabels: false, // Não mostrar labels selecionadas
        showUnselectedLabels: false, // Não mostrar labels não selecionadas
      ),
    );
  }

  Widget _buildCoffeeTypeOption(String coffeeType) {
    bool isSelected = selectedCoffeeType == coffeeType;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCoffeeType = coffeeType;
        });
        if (selectedCoffeeType == 'Macchiato') {}
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffC67C4E) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? const Color(0xffC67C4E) : Colors.grey,
            width: 2,
          ),
        ),
        child: Text(
          coffeeType,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildCoffeeRow(List<Widget> children) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }

  Widget _buildCoffeeContainer(
    String coffeeType,
    String description,
    String imageUrl,
    String price,
  ) {
    return GestureDetector(
      onTap: () async {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Detalhes(
                      imageproduto: imageUrl,
                      nomeproduto: coffeeType,
                      descrprod: description,
                    )));
      },
      child: Container(
        width: 150,
        height: 238,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 132,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeType,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' $price',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Color(0xffC67C4E),
                            size: 24,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'data.dart';
import 'item_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhomepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  var currentindex = 0;
  final data = Product(
    'Avacado',
    '200',
    '1 (kg)',
    'assets/avakado.jpg',
    'fresh and clean',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        elevation: 1,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          'Zepto',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: (() {}),
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 3,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            return ItemWidget(product: allData[index]);
          },
          itemCount: allData.length,
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.indigo[900],
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.indigo[900],
                icon: Icon(Icons.home, color: Colors.white,size: 35,), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category, color: Colors.white,size:35,),
                label: "Catgories"),
            BottomNavigationBarItem(
                icon: Icon(Icons.free_breakfast, color: Colors.white,size:35,),
                label: "Fresh Fiesta"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart, color: Colors.white,size:35,),
                label: "Cart"),
          ],
        ),
    );
  }
}





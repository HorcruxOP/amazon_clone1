import 'package:amazon_clone1/screens/cart_page.dart';
import 'package:amazon_clone1/screens/menu_page.dart';
import 'package:amazon_clone1/screens/more_page.dart';
import 'package:amazon_clone1/screens/profile_page.dart';
import 'package:amazon_clone1/widgets/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List<Widget> currentIndex = [
    const HomePage(),
    const ProfilePage(),
    const MorePage(),
    const CartPage(),
    const MenuPage(),
  ];
  void selectedPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(color: Colors.teal),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 225,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Search Amazon.in",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(Icons.qr_code_scanner_outlined),
                          const SizedBox(width: 10),
                          const Icon(Icons.mic_outlined)
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Icon(Icons.document_scanner_outlined),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: HomePageBody(),
              )
            ],
          ),
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (value) {
              selectedPage(value);
            },
            selectedIndex: selectedIndex,
            indicatorColor: Colors.amber,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              NavigationDestination(
                icon: Icon(Icons.person_2_outlined),
                label: "You",
              ),
              NavigationDestination(
                icon: Icon(Icons.more_horiz),
                label: "More",
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_cart_outlined),
                label: "Cart",
              ),
              NavigationDestination(
                icon: Icon(Icons.menu_outlined),
                label: "Menu",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

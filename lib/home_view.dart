import 'package:alista/reservasi_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Value/color.dart';
import 'approval_view.dart';
import 'home.dart';




class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeViewState();
  }
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  bool active_status = false;
  final List<Widget> _container = [
    HomePage(),
    ReservasiView(),
    Approval(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }


  late BottomNavigationBar navigationBar2;

  @override
  Widget build(BuildContext context) {
    navigationBar2 = BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/home.png")),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/reservasi.png")),
          label: "Reservasi",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/approval.png")),
          label: "Approval",
        ),
      ],
      selectedItemColor: ColorPallete.red_background,
      selectedLabelStyle: TextStyle(color: ColorPallete.white),
      backgroundColor: ColorPallete.white,
      unselectedItemColor: ColorPallete.grey,
      unselectedLabelStyle: TextStyle(color: ColorPallete.red_background),
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
    );

    return Scaffold(
      body: _container[_selectedIndex],
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
              ),
            ],
          ),
          child: navigationBar2),
    );
  }
}

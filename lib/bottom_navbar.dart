import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.brown,
      shape: CircularNotchedRectangle(),
      notchMargin: 12,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 60,

    ),
    );
  }
}

import 'package:flutter/material.dart';

class mainAppBar extends StatefulWidget {
  const mainAppBar({Key? key}) : super(key: key);

  @override
  _mainAppBarState createState() => _mainAppBarState();
}

class _mainAppBarState extends State<mainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Container(
        child: const Text("App Name"),
        margin: const EdgeInsets.only(bottom: 3),
      ),
      titleTextStyle: const TextStyle(
          color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
    );
  }
}

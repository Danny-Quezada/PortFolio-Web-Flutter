import 'package:flutter/material.dart';
import 'package:web_desing/sections/one_section.dart';
import 'package:web_desing/sections/two_section.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? controller;
  @override
  void initState() {
    

    // TODO: implement initState
    super.initState();
    controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: size.width > 1080 ? null : Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        actions: size.width > 1080 ? _sections(size) : null
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [OneSection(), TwoSection(), OneSection()],
        ),
      ),
    );
  }

  TextStyle _styleButton = TextStyle(
    color: Colors.white,
  );
  List<Widget> _sections(Size size) {
    return [
      TextButton(
          onPressed: () {
            setState(() {
              controller!.jumpTo(controller!.position.minScrollExtent);
            });
          },
          child: Text(
            "About me",
            style: _styleButton,
          )),
      const SizedBox(
        width: 50,
      ),
      TextButton(
          onPressed: () {
            setState(() {
              controller!.jumpTo(size.height);
            });
          },
          child: Text(
            "Project",
            style: _styleButton,
          )),
      const SizedBox(
        width: 50,
      )
    ];
  }
}

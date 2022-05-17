

import 'package:flutter/material.dart';

class OneSection extends StatefulWidget {
  OneSection({Key? key}) : super(key: key);

  @override
  State<OneSection> createState() => _OneSectionState();
}

class _OneSectionState extends State<OneSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: size.width > 1080 ? EdgeInsets.all(0) : EdgeInsets.only(left: 50,right: 50),
      width: size.width,
      height: size.height,
      color: Colors.black,
      child: _content(size),
    );
  }

  _content(Size size) {
    return size.width > 1080 ? _webView(size) : _phoneView(size);
  }

  Column _phoneView(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [_image(size),SizedBox(height: size.height*.02,), _contentWord(size)],
    );
  }

  _buttonCurriculum() {
    return GestureDetector(
      onTap: () {
        setState(() {
          // TODO: lógica para descargar el currículum
        });
      },
      child: Container(
        width: 100,
        height: 40,
        child: const Center(
            child: Text(
          "Curriculum",
          style: TextStyle(fontFamily: "Jetbrain"),
        )),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.lightBlue]),
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }

  Row _webView(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_contentWord(size), _image(size)],
    );
  }

  _image(Size size) {
    return Container(
      width: size.width * .4,
      height: size.height * .4,
      decoration: const BoxDecoration(
        backgroundBlendMode: BlendMode.difference,
        image: DecorationImage(image: AssetImage("assets/Me.png")),
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: [Colors.blue, Colors.amber]),
      ),
    );
  }

  _contentWord(Size size) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(text: TextSpan(
            style: const TextStyle(color: Colors.white,fontFamily: 'Jetbrain',fontSize: 20),
            children: [
              const TextSpan(text: "Hi, my name is "),
              TextSpan(text: "Danny.",style: TextStyle(fontFamily: "Jetbrain",fontSize: 20,color: Colors.blueAccent.shade100))
            ]
          )),
          SizedBox(
            height: size.height * .02,
          ),
          const Text(
            "I am student of Universidad Nacional de ingeniería.",
            style: TextStyle(
                color: Colors.white, fontFamily: "Jetbrain", fontSize: 18),
            overflow: TextOverflow.clip,
          ),
          SizedBox(
            height: size.height * .05,
          ),
          _buttonCurriculum()
        ]);
  }
}

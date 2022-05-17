import 'package:flutter/material.dart';

class ProjectWidget extends StatelessWidget {
  Image image;
  String title;
  String description;
  double width;
  double height;
  ProjectWidget(
      {required this.image,
      required this.title,
      required this.description,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: image,
                backgroundColor: Colors.black.withOpacity(.1),
              );
            });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.elliptical(8, 8))),
        width: width,
        height: height,
        child: Column(
          children: [
            image,
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style:
                  const TextStyle(fontFamily: "Jetbrain", color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(description,
                        style: const TextStyle(
                          fontFamily: "Jetbrain",
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

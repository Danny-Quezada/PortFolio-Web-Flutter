import 'package:flutter/material.dart';
import 'package:web_desing/widgets/project_widget.dart';

class TwoSection extends StatefulWidget {
  TwoSection({Key? key}) : super(key: key);

  @override
  State<TwoSection> createState() => _TwoSectionState();
}

class _TwoSectionState extends State<TwoSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: size.width > 1080
          ? const EdgeInsets.all(20)
          : const EdgeInsets.all(20),
      width: size.width,
      height: size.height * .9,
      color: Colors.black,
      child: _content(size),
    );
  }

  _content(Size size) {
    return Center(child: size.width > 1080 ? _webView(size) : _phoneView(size));
  }

  _phoneView(Size size) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            _title(),
            ProjectWidget(
              image: Image.asset("assets/TaskManager.png"),
              title: "Task Manager",
              description:
                  "Task manager is a to do app, allow you to create, to delete, etc task for do.",
              width: size.width * .7,
              height: size.height * .40,
            ),
            const SizedBox(
              height: 20,
            ),
            ProjectWidget(
              image: Image.asset("assets/NominalApp.png"),
              title: "Nominal App",
              description:
                  "Nominal app allows you to create nominations of any month, export them to excel among other things.",
              width: size.width * .7,
              height: size.height * .40,
            ),
            const SizedBox(
              height: 20,
            ),
            ProjectWidget(
              image: Image.asset("assets/NominalApp.png"),
              title: "Nominal App",
              description:
                  "Nominal app allows you to create nominations of any month, export them to excel among other things.",
              width: size.width * .7,
              height: size.height * .40,
            ),
          ],
        ),
      ),
    );
  }

  _title() {
    return Column(children: const [
      Text(
        "Projects",
        style: TextStyle(
            fontFamily: "Jetbrain", color: Colors.white, fontSize: 18),
      ),
      SizedBox(
        height: 10,
      ),
    ]);
  }

  _webView(Size size) {
    return Column(
      children: [
        _title(),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Column(
              children: [
                ProjectWidget(
                  image: Image.asset("TaskManager.png"),
                  title: "Task Manager",
                  description:
                      "Task manager is a to do app, allow you to create, to delete, etc task for do.",
                  width: size.width * .15,
                  height: size.height * .45,
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Column(
              children: [
                ProjectWidget(
                  image: Image.asset("NominalApp.png"),
                  title: "Nominal App",
                  description:
                      "Nominal app allows you to create nominations of any month, export them to excel among other things.",
                  width: size.width * .15,
                  height: size.height * .45,
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Column(
              children: [
                ProjectWidget(
                  image: Image.asset("NominalApp.png"),
                  title: "Nominal App",
                  description:
                      "Nominal app allows you to create nominations of any month, export them to excel among other things.",
                  width: size.width * .15,
                  height: size.height * .45,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

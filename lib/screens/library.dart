import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF121212),
        appBar: AppBar(
          backgroundColor: const Color(0xFF121212),
          elevation: 8,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.asset("assets/images/user.jpg"),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Kitaplığın"),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.plus,
                  size: 24,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}

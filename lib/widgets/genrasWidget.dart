import 'package:flutter/material.dart';
import 'package:flutter_spotify_app/screens/view/album_view.dart';
import 'package:flutter_spotify_app/widgets/album_card.dart';

class GenreGridView extends StatelessWidget {
  Color color1,
      color2,
      color3,
      color4,
      color5,
      color6,
      color7,
      color8,
      color9,
      color10,
      color11,
      color12,
      color13,
      color14,
      color15,
      color16,
      color17,
      color18;
  String name1,
      name2,
      name3,
      name4,
      name5,
      name6,
      name7,
      name8,
      name9,
      name10,
      name11,
      name12,
      name13,
      name14,
      name15,
      name16,
      name17,
      name18;
  String url1,
      url2,
      url3,
      url4,
      url5,
      url6,
      url7,
      url8,
      url9,
      url10,
      url11,
      url12,
      url13,
      url14,
      url15,
      url16,
      url17,
      url18;
  String genre;

  GenreGridView(
      {required this.color1,
      required this.color2,
      required this.color3,
      required this.color4,
      required this.color5,
      required this.color6,
      required this.color7,
      required this.color8,
      required this.color9,
      required this.color10,
      required this.color11,
      required this.color12,
      required this.color13,
      required this.color14,
      required this.color15,
      required this.color16,
      required this.color17,
      required this.color18,
      required this.name1,
      required this.name2,
      required this.name3,
      required this.name4,
      required this.name5,
      required this.name6,
      required this.name7,
      required this.name8,
      required this.name9,
      required this.name10,
      required this.name11,
      required this.name12,
      required this.name13,
      required this.name14,
      required this.name15,
      required this.name16,
      required this.name17,
      required this.name18,
      required this.url1,
      required this.url2,
      required this.url3,
      required this.url4,
      required this.url5,
      required this.url6,
      required this.url7,
      required this.url8,
      required this.url9,
      required this.url10,
      required this.url11,
      required this.url12,
      required this.url13,
      required this.url14,
      required this.url15,
      required this.url16,
      required this.url17,
      required this.url18,
      required this.genre});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              genre,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url1.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color1,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name1,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(25 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url1),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url2.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color2,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name2,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url2),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url3.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color3,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name3,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url3),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url4.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color4,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name4,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url4),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url5.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color5,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name5,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url5),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url6.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color6,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name6,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url6),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url7.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color7,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name7,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url7),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url8.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color8,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name8,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url8),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url9.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color9,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name9,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url9),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url10.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color10,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name10,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url10),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url11.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color11,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name11,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url11),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url12.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color12,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name12,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url12),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url13.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color13,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name13,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url13),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url14.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color14,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name14,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url14),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url15.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color15,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name15,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url15),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumView(
                                      image:
                                          AssetImage("assets/images/url16.jpg"),
                                    )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color16,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name16,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url16),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AlbumView(
                                  image: AssetImage("assets/images/url17.jpg"),
                                )));
                  },
                  child: Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: color17,
                          height: 100,
                          width: 170,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name17,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(15 / 360),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(url17),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AlbumView(
                                        image: AssetImage(
                                            "assets/images/url18.jpg"),
                                      )));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            color: color18,
                            height: 100,
                            width: 170,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    name18,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                RotationTransition(
                                  turns: AlwaysStoppedAnimation(15 / 360),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: SizedBox(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset(url18),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

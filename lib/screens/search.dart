import 'package:flutter/material.dart';
import 'package:flutter_spotify_app/widgets/searchFunctionality.dart';
import 'package:flutter_spotify_app/widgets/genrasWidget.dart';

class SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xff4f4f4f),
        Color(0xff121212),
      ], begin: Alignment.topLeft, end: FractionalOffset(0.1, 0.3))),
      child: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  child: const Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 0, 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Ara",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    clipBehavior: Clip.antiAlias,
                    child: GestureDetector(
                      onTap: () {
                        showSearch(context: context, delegate: MusicSearch());
                      },
                      child: Container(
                        height: 55,
                        width: 380,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  "Ne dinlemek istiyorsun?",
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GenreGridView(
                  genre: "Hepsine göz at",
                  name1: "2022 Özeti",
                  name2: "Podcast'ler",
                  name3: "Senin için \nHazırlandı",
                  name4: "Yeni \nÇıkanlar",
                  name5: "Pop",
                  name6: "Hip Hop",
                  name7: "Ruh Hali",
                  name8: "Popüler",
                  name9: "Listeler",
                  name10: "Canlı \nEtkinlikler",
                  name11: "Dans ve \nElektronik",
                  name12: "Rock",
                  name13: "Indie",
                  name14: "Fitness",
                  name15: "Keşfet",
                  name16: "Country",
                  name17: "RnB",
                  name18: "K-pop",
                  color1: Color(0xFF8400e7),
                  color2: Color(0Xffe13300),
                  color3: Color(0xff1e3264),
                  color4: Color(0xffe8115b),
                  color5: Color(0xff148a08),
                  color6: Color(0xffbc5900),
                  color7: Color(0xffe1118c),
                  color8: Color(0xffb02897),
                  color9: Color(0xff8d67ab),
                  color10: Color(0xff7358ff),
                  color11: Color(0xffd84000),
                  color12: Color(0xffe91429),
                  color13: Color(0xffe91429),
                  color14: Color(0xff777777),
                  color15: Color(0xff8d67ab),
                  color16: Color(0xffd84000),
                  color17: Color(0xffdc148c),
                  color18: Color(0xff148a08),
                  url1: "assets/images/url1.jpg",
                  url2: "assets/images/url2.jpg",
                  url3: "assets/images/url3.jpg",
                  url4: "assets/images/url4.jpg",
                  url5: "assets/images/url5.jpg",
                  url6: "assets/images/url6.jpg",
                  url7: "assets/images/url7.jpg",
                  url8: "assets/images/url8.jpg",
                  url9: "assets/images/url9.jpg",
                  url10: "assets/images/url10.jpg",
                  url11: "assets/images/url11.jpg",
                  url12: "assets/images/url12.jpg",
                  url13: "assets/images/url13.jpg",
                  url14: "assets/images/url14.jpg",
                  url15: "assets/images/url15.jpg",
                  url16: "assets/images/url16.jpg",
                  url17: "assets/images/url17.jpg",
                  url18: "assets/images/url18.jpg",
                ),
                //
              ],
            ),
          )
        ],
      ),
    );
  }
}

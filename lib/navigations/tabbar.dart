import 'package:flutter/material.dart';
import 'package:flutter_spotify_app/screens/home.dart';
import 'package:flutter_spotify_app/screens/library.dart';
import 'package:flutter_spotify_app/screens/premium.dart';
import 'package:flutter_spotify_app/screens/search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tabbar extends StatefulWidget {
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            this._selectedTab = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: "Ana sayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search),
            label: "Ara",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories_outlined),
            label: "Your Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.spotify),
            label: "Premium",
          ),
        ],
      ),
      body: Stack(
        children: [
          renderView(
            0,
            HomeView(),
          ),
          renderView(
            1,
            SearchView(),
          ),
          renderView(
            2,
            LibraryView(),
          ),
          renderView(
            3,
            PremiumView(),
          ),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}

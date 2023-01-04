import 'package:flutter/material.dart';
import 'package:flutter_spotify_app/screens/alert.dart';
import 'package:flutter_spotify_app/screens/history.dart';
import 'package:flutter_spotify_app/screens/view/row_album_view.dart';
import 'package:flutter_spotify_app/widgets/album_card.dart';
import 'package:flutter_spotify_app/widgets/song_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
              color: Color(0xFf1C7A74),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Günaydın",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          icon: Image.asset(
                                            'assets/icons/alert.png',
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AlertView()));
                                          },
                                        ),
                                        IconButton(
                                          icon: Image.asset(
                                            'assets/icons/history.png',
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HistoryView()));
                                          },
                                        ),
                                        IconButton(
                                          icon: Image.asset(
                                            'assets/icons/settings.png',
                                          ),
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, "/myProfile");
                                          },
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Container(
                            height: 25,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey.shade400.withOpacity(0.15),
                            ),
                            child: Center(
                              child: Text(
                                "Müzik",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Container(
                            height: 25,
                            width: 195,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey.shade400.withOpacity(0.15),
                            ),
                            child: Center(
                              child: Text(
                                "Podcast'ler ve Programlar",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "Haberin yok \nölüyorum",
                                image: AssetImage(
                                    "assets/images/haberin_yok_oluyorum.jpg"),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RowAlbumView(
                                          image: AssetImage(
                                              "assets/images/haberin_yok_oluyorum.jpg"),
                                        ),
                                      ));
                                },
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Duman",
                                image: AssetImage("assets/images/duman.jpg"),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RowAlbumView(
                                          image: AssetImage(
                                              "assets/images/duman.jpg"),
                                        ),
                                      ));
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "ADEN",
                                image: AssetImage("assets/images/aden.jpg"),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RowAlbumView(
                                          image: AssetImage(
                                              "assets/images/aden.jpg"),
                                        ),
                                      ));
                                },
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "nefes bile \nalmadan seviyo...",
                                image: AssetImage("assets/images/nefes.jpg"),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RowAlbumView(
                                          image: AssetImage(
                                              "assets/images/nefes.jpg"),
                                        ),
                                      ));
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "SİYAM",
                                image: AssetImage("assets/images/oluyom.jpg"),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RowAlbumView(
                                          image: AssetImage(
                                              "assets/images/oluyom.jpg"),
                                        ),
                                      ));
                                },
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "614",
                                image: AssetImage("assets/images/614.jpg"),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RowAlbumView(
                                          image: AssetImage(
                                              "assets/images/614.jpg"),
                                        ),
                                      ));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Text(
                        "Pop",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: "Duman",
                            image: AssetImage("assets/images/duman.jpg"),
                            onTap: () {},
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Aden",
                            image: AssetImage("assets/images/aden.jpg"),
                            onTap: () {},
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Sessiz Gemi",
                            image: AssetImage("assets/images/gemi.jpg"),
                            onTap: () {},
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "SİYAM",
                            image: AssetImage("assets/images/oluyom.jpg"),
                            onTap: () {},
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "614",
                            image: AssetImage("assets/images/614.jpg"),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "En çok dinlediğin mix'ler",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            children: const [
                              SongCard(
                                image: AssetImage("assets/images/album1.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album2.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album3.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album4.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album5.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/album6.jpg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Kaldığın yerden devam et",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage("assets/images/tas1.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/tas2.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/tas3.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/tas4.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/tas5.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/images/tas6.jpg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  final Function()? onTap;
  const RowAlbumCard({
    Key? key,
    required this.image,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Image(
                image: image,
                height: 48,
                width: 48,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 8),
              Text(label)
            ],
          ),
        ),
      ),
    );
  }
}

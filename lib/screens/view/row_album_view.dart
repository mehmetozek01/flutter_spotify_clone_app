import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spotify_app/foundation/item/item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowAlbumView extends StatefulWidget {
  final ImageProvider image;

  RowAlbumView({super.key, required this.image});

  @override
  State<RowAlbumView> createState() => _RowAlbumViewState();
}

class _RowAlbumViewState extends State<RowAlbumView> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerinitalHeight = 500;
  double imageOpacity = 1;
  bool showTopBar = false;

  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initialSize - scrollController.offset;
        if (imageSize < 0) {
          imageSize = 0;
        }
        containerHeight = containerinitalHeight - scrollController.offset;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        imageOpacity = imageSize / initialSize;
        if (scrollController.offset > 224) {
          showTopBar = true;
        } else {
          showTopBar = false;
        }
        print(scrollController.offset);
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double topContainerheight = 190;
    final assetsAudioPlayer = AssetsAudioPlayer();

    final cardSize = MediaQuery.of(context).size.width / 2 - 32;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                    Color(0xFF98814d).withOpacity(0),
                    Color(0xFF98814d).withOpacity(0.1),
                    Color(0xFF98814d).withOpacity(0.2),
                    Color(0xFF98814d).withOpacity(0.3),
                    Color(0xFF98814d).withOpacity(0.4),
                    Color(0xFF98814d).withOpacity(0.8),
                    // Colors.yellow.withOpacity(0.8),
                    // Colors.yellow.withOpacity(0.7),
                    // Colors.yellow.withOpacity(0.5),
                    // Colors.yellow.withOpacity(0.4),
                    // Colors.yellow.withOpacity(0.3),
                    // Colors.yellow.withOpacity(0.2),
                    // Colors.yellow.withOpacity(0.1),
                  ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: imageOpacity.clamp(0, 1.0),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.5),
                            offset: Offset(0, 20),
                            blurRadius: 32,
                            spreadRadius: 16,
                          )
                        ],
                      ),
                      child: Image(
                        image: widget.image,
                        width: imageSize,
                        height: imageSize,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          SizedBox(height: initialSize + 32),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Dibine Kadar",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: const [
                                    Icon(
                                      FontAwesomeIcons.spotify,
                                      size: 32,
                                    ),
                                    SizedBox(width: 8),
                                    Text("Spotify")
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "1,888,132 likes 5h 3m",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(height: 16),
                                Stack(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.green,
                                        ),
                                        SizedBox(width: 16),
                                        Icon(
                                          FontAwesomeIcons.ellipsisVertical,
                                          size: 14,
                                        ),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(
                                          width: 54,
                                          height: 54,
                                          alignment: Alignment.center,
                                          child: Icon(
                                            FontAwesomeIcons.shuffle,
                                            size: 28,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Container(
                                          width: 54,
                                          height: 54,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff14D860),
                                          ),
                                          child: Icon(
                                            Icons.play_arrow,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                              title: "Dibine Kadar",
                              subtitle: "Duman",
                              assetName: "dibine_kadar.jpg",
                              color: Colors.grey,
                              onTap: () {
                                print("dibine çal");
                                // AssetsAudioPlayer.newPlayer().open(
                                //   Audio("assets/audios/song1.mp3"),
                                // );
                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                                title: "Dibine Kadar",
                                color: Colors.grey,
                                subtitle: "Duman",
                                assetName: "dibine_kadar.jpg")
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                                title: "Dibine Kadar",
                                color: Colors.grey,
                                subtitle: "Duman",
                                assetName: "dibine_kadar.jpg")
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                                title: "Dibine Kadar",
                                color: Colors.grey,
                                subtitle: "Duman",
                                assetName: "dibine_kadar.jpg")
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                                title: "Dibine Kadar",
                                color: Colors.grey,
                                subtitle: "Duman",
                                assetName: "dibine_kadar.jpg")
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                                title: "Dibine Kadar",
                                color: Colors.grey,
                                subtitle: "Duman",
                                assetName: "dibine_kadar.jpg")
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                                title: "Dibine Kadar",
                                color: Colors.grey,
                                subtitle: "Duman",
                                assetName: "dibine_kadar.jpg")
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                                title: "Dibine Kadar",
                                color: Colors.grey,
                                subtitle: "Duman",
                                assetName: "dibine_kadar.jpg")
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                                title: "Dibine Kadar",
                                color: Colors.grey,
                                subtitle: "Duman",
                                assetName: "dibine_kadar.jpg")
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                                title: "Dibine Kadar",
                                color: Colors.grey,
                                subtitle: "Duman",
                                assetName: "dibine_kadar.jpg")
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                                title: "Dibine Kadar",
                                color: Colors.grey,
                                subtitle: "Duman",
                                assetName: "dibine_kadar.jpg")
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                                title: "Dibine Kadar",
                                color: Colors.grey,
                                subtitle: "Duman",
                                assetName: "dibine_kadar.jpg")
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Item(
                                title: "Dibine Kadar",
                                color: Colors.grey,
                                subtitle: "Duman",
                                assetName: "dibine_kadar.jpg")
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                color: showTopBar
                    ? Color(0xFF98814d).withOpacity(1)
                    : Color(0xFF98814d).withOpacity(0),
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: SafeArea(
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              size: 38,
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 250),
                          opacity: showTopBar ? 1 : 0,
                          child: Text(
                            "Ophelia",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Positioned(
                          right: 80,
                          bottom: 80 -
                              containerHeight.clamp(120.0, double.infinity),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

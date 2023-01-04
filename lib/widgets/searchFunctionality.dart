import "package:flutter/material.dart";

class MusicSearch extends SearchDelegate {
  var musicNameLists = [
    "Tek Başına",
    "Belki De",
    "Endamın Yeter",
    "Martı",
    "Dibine Kadar",
    "Gel",
    "Yine de sen"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            Navigator.pop(context);
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          Navigator.pop(context);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = musicNameLists;
    return ListView.builder(
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          print("Tıklandı");
        },
        child: ListTile(
          leading: const Icon(Icons.music_note),
          title: Text(suggestionList[index]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}

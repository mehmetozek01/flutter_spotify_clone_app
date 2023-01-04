import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlertView extends StatefulWidget {
  const AlertView({super.key});

  @override
  State<AlertView> createState() => _AlertViewState();
}

class _AlertViewState extends State<AlertView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Yenilikler',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4), // Boşluk
                Text(
                  "Takip ettiğin sanatçılardan, podcast'lerden ve programlardan yeni çıkanlar.",
                  style: TextStyle(
                    fontSize: 11.5,
                    color: Colors.grey,
                  ),
                ),
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
                    border: Border.all(color: Colors.grey.shade600, width: 1.5),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      "Müzik",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.white),
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
                    border: Border.all(color: Colors.grey.shade600, width: 1.5),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Center(
                    child: Text(
                      "Podcast'ler ve Programlar",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 130, 0, 16),
                child: Column(
                  children: const [
                    Text(
                      'Henüz senin için gösterebileceğimiz \n                 bir yenilik yok',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "  Bir yenilik olduğunda burada paylaşacağız. En \nsevdiğin sanatçıları ve poscast'lari takip et, hiçbir \n                           şeyi kaçırma.",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

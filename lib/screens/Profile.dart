import 'package:flutter/material.dart';
import 'package:flutter_spotify_app/widgets/PremiumButton.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool isSwitched = false;
  double rating = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: const Text(
          "Ayarlar",
          style: TextStyle(fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Ücretsiz Hesap",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 30, 100, 0),
              child: PremiumButton("PREMİUMLU OL"),
            ),
            const SizedBox(height: 30),
            ListTile(
              leading: const CircleAvatar(
                maxRadius: 33,
                backgroundImage: AssetImage("assets/images/user.jpg"),
              ),
              title: const Text(
                "Mehmet Özek",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: const Text(
                "Profili Görüntüle",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              trailing: IconButton(
                  icon: const Icon(
                    Icons.expand_more,
                    color: Colors.grey,
                  ),
                  onPressed: () {}),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
                title: const Text(
                  "Kapalı",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Müzik kalitesini düşük seçerek canvas'ı devre dışı bırakın",
                  style: TextStyle(color: Colors.grey[500], fontSize: 13),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  inactiveTrackColor: Colors.grey,
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.green,
                )),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                "Çal",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              title: Text(
                "Çapraz geçiş",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Şarkılar arası geçiş yapmanızı sağlar",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Kapalı",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 280,
                    child: Slider(
                        activeColor: Colors.green,
                        min: 0,
                        max: 100,
                        value: rating,
                        onChanged: (newRating) {
                          setState(() {
                            rating = newRating;
                          });
                        }),
                  ),
                  const Text(
                    "12 sn.",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            ListTile(
                title: const Text(
                  "Aralıksız",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text(
                  "Aralıksız Çalmaya izin verir",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  inactiveTrackColor: Colors.grey,
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.green,
                )),
            ListTile(
                title: const Text(
                  "Otomatik geçiş",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text(
                  "Belirli çalma listelerinde, şarkılar arasında kesintisiz geçişlere izin verir",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  inactiveTrackColor: Colors.grey,
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.green,
                )),
            ListTile(
                title: const Text(
                  "Sansıürsüz içeriğe izin ver",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text(
                  "Sansürsüz içerik çalmak için aç",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  inactiveTrackColor: Colors.grey,
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.green,
                )),
            ListTile(
                title: const Text(
                  "Çalınmayan şarkıları göster",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text(
                  "Çalınabilir olmayan şarkıları göster",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  inactiveTrackColor: Colors.grey,
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.green,
                )),
          ],
        ),
      ),
    );
  }
}

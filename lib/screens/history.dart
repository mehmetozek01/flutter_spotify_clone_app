import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        title: const Text(
          "Yakınlarda çalınanlar",
          style: TextStyle(fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 35, 0, 10),
                        child: Text(
                          "Bugün",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  Container(
                    color: const Color(0xFF121212),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Card(
                        elevation: 0,
                        color: const Color(0xFF121212),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/images/haberin_yok_oluyorum.jpg'), // Fotoğraf 1
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Haberin yok ölüyorum',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 4), // Boşluk
                                  Text(
                                    'Çalma listesi - Yasin Şahin',
                                    style: TextStyle(
                                      fontSize: 11.5,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Expanded(
                          child: SizedBox(
                            width: 42,
                            height: 42,
                            child: Image.asset(
                                'assets/images/bekle.jpg'), // Fotoğraf 2
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Bekle Dedi Gitti - Çizik',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 4), // Boşluk
                              Text(
                                'Şarkı - Kaan Tangöze',
                                style: TextStyle(
                                  fontSize: 11.5,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(FontAwesomeIcons.ellipsisVertical,
                                size: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Expanded(
                          child: SizedBox(
                            width: 42,
                            height: 42,
                            child: Image.asset(
                                'assets/images/belki.jpg'), // Fotoğraf 2
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Bir Derdim Var',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 4), // Boşluk
                              Text(
                                'Şarkı - mor ve ötesi',
                                style: TextStyle(
                                  fontSize: 11.5,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(FontAwesomeIcons.ellipsisVertical,
                                size: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Expanded(
                          child: SizedBox(
                            width: 42,
                            height: 42,
                            child: Image.asset(
                                'assets/images/duman.jpg'), // Fotoğraf 2
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Öyle Dertli',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 4), // Boşluk
                              Text(
                                'Şarkı - Duman',
                                style: TextStyle(
                                  fontSize: 11.5,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(FontAwesomeIcons.ellipsisVertical,
                                size: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(32, 16, 16, 16),
                        child: Text(
                          "Çalınan tüm 31 içeriğini gör",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 35, 0, 10),
                        child: Text(
                          "26 Ara 2022 Pzt",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  Container(
                    color: const Color(0xFF121212),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Card(
                        elevation: 0,
                        color: const Color(0xFF121212),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/images/pahali.jpg'), // Fotoğraf 1
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'pahalı mekanların önüne izmarit attım',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 4), // Boşluk
                                  Text(
                                    'Çalma listesi - atalay',
                                    style: TextStyle(
                                      fontSize: 11.5,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Expanded(
                          child: SizedBox(
                            width: 42,
                            height: 42,
                            child: Image.asset(
                                'assets/images/amca.jpg'), // Fotoğraf 2
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'AMCAS RMX',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 14,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: Colors.grey),
                                    child: const Center(
                                      child: Text(
                                        'E',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    "Şarkı - Batuflex",
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(FontAwesomeIcons.ellipsisVertical,
                                size: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Expanded(
                          child: SizedBox(
                            width: 42,
                            height: 42,
                            child: Image.asset(
                                'assets/images/eser.jpg'), // Fotoğraf 2
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'wtd freestyle',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 14,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: Colors.grey),
                                    child: const Center(
                                      child: Text(
                                        'E',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    "Şarkı - Eser Inc.",
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(FontAwesomeIcons.ellipsisVertical,
                                size: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Container(
                    color: const Color(0xFF121212),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Card(
                        elevation: 0,
                        color: const Color(0xFF121212),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/images/duman.jpg'), // Fotoğraf 1
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'pahalı mekanların önüne izmarit attım',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 4), // Boşluk
                                  Text(
                                    'Çalma listesi - atalay',
                                    style: TextStyle(
                                      fontSize: 11.5,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Expanded(
                          child: SizedBox(
                            width: 42,
                            height: 42,
                            child: Image.asset(
                                'assets/images/dibine_kadar.jpg'), // Fotoğraf 2
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Sor Bana Pişman mıyım',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 4), // Boşluk
                              Text(
                                'Şarkı - Duman',
                                style: TextStyle(
                                  fontSize: 11.5,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(FontAwesomeIcons.ellipsisVertical,
                                size: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Expanded(
                          child: SizedBox(
                            width: 42,
                            height: 42,
                            child: Image.asset(
                                'assets/images/duman2.jpg'), // Fotoğraf 2
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Gönül İster',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 4), // Boşluk
                              Text(
                                'Şarkı - Duman',
                                style: TextStyle(
                                  fontSize: 11.5,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(FontAwesomeIcons.ellipsisVertical,
                                size: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Expanded(
                          child: SizedBox(
                            width: 42,
                            height: 42,
                            child: Image.asset(
                                'assets/images/mayıs.jpg'), // Fotoğraf 2
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Ama Bana Bakma Öyle',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 4), // Boşluk
                              Text(
                                'Şarkı - VAGON',
                                style: TextStyle(
                                  fontSize: 11.5,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(FontAwesomeIcons.ellipsisVertical,
                                size: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(32, 16, 16, 16),
                        child: Text(
                          "Çalınan tüm 44 içeriğini gör",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

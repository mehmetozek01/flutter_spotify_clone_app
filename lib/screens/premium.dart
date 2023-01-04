import 'package:flutter/material.dart';
import 'package:flutter_spotify_app/widgets/PremiumButton.dart';
import 'package:flutter_spotify_app/widgets/SaleBannerScreen.dart';
import 'package:flutter_spotify_app/widgets/customIndicator.dart';

class PremiumView extends StatefulWidget {
  const PremiumView({super.key});

  @override
  State<PremiumView> createState() => _PremiumViewState();
}

class _PremiumViewState extends State<PremiumView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Text(
              "1 ay ücretsiz olarak Premium'u deneyin",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 33,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          CarouselWithIndicatorDemo(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: PremiumButton("PREMIUM'A GEÇ"),
          ),
          SizedBox(height: 5),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                  children: [
                    TextSpan(
                        text:
                            "3 Ay Ücretsiz Dinlemek için Son Şans. Sonra Ayda 20,99 TL.\n"),
                    TextSpan(
                        text: " Koşullar Geçerlidir. ",
                        style: TextStyle(color: Colors.grey[300])),
                    TextSpan(text: "Spotify®")
                  ])),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[700],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Ücretsiz Spotify",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    "Geçerli Plan",
                    style: TextStyle(color: Colors.grey[400]),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: SaleBannerScreen(
              color1: Color(0xFF000080),
              color2: Color(0xff654321),
              title: "Bireysel",
              title2: "20,99 TL",
              title3: "3 ay ücretsiz",
              aciklama:
                  "Reklamsız müzik dinle Her yerde çal, hatta çevrimdışı dinle Şarkıları istediğin sırada çal",
              free: "1 AY ÜCRETSİZ",
              title4:
                  "3 Ay Ücretsiz Dinlemek için Son Şans. Sonra Ayda 20,99 TL.\n",
              title5: " Koşullar Geçerlidir. ",
              title6: "Spotify®",
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: SaleBannerScreen(
              title: "Premium Aile",
              title2: "34,99 TL",
              title3: "1 ay ücretsiz",
              aciklama:
                  "Aynı çatı altında yaşayan aile üyeleri için 6 ayrı Premium hesabı. Sansürsüz müziği engelle Reklamsız müzik dinle, çevrimdışı çal, şarkıları istediğin sırada çal",
              free: "1 AY ÜCRETSİZ",
              title4:
                  "3 Ay Ücretsiz Dinlemek için Son Şans. Sonra Ayda 20,99 TL.\n",
              title5: " Koşullar Geçerlidir. ",
              title6: "Spotify®",
              color1: Color(0xff8e44ad),
              color2: Colors.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: SaleBannerScreen(
              title: "Premium Duo",
              title2: "27,99 TL",
              title3: "1 ay ücretsiz",
              aciklama:
                  "Aynı çatı altında yaşayan çiftler için 2 Premium hesabı Reklamsız müzik dinle, çevrimdışı çal, şarkıları istediğin sırada çal",
              free: "1 AY ÜCRETSİZ",
              title4:
                  "3 Ay Ücretsiz Dinlemek için Son Şans. Sonra Ayda 20,99 TL.\n",
              title5: " Koşullar Geçerlidir. ",
              title6: "Spotify®",
              color1: Color(0xffd35400),
              color2: Color(0XFF679215),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: SaleBannerScreen(
              color1: Color(0xff32cd32),
              color2: Color(0xFF986960),
              title: "Premium Öğrenci",
              title2: "10,49 TL",
              title3: "1 ay ücretsiz",
              aciklama:
                  "Yararlanabilecek üniversite öğrencilerine özel indirim Reklamsız müzik dinle Her yerde çal, hatta çevrimdışı dinle Şarkıları istediğin sırada çal",
              free: "1 AY ÜCRETSİZ",
              title4:
                  "3 Ay Ücretsiz Dinlemek için Son Şans. Sonra Ayda 20,99 TL.\n",
              title5: " Koşullar Geçerlidir. ",
              title6: "Spotify®",
            ),
          )
        ],
      ),
    );
  }
}

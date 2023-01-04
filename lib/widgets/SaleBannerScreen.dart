import 'package:flutter/material.dart';
import 'package:flutter_spotify_app/widgets/PremiumButton.dart';

class SaleBannerScreen extends StatelessWidget {
  final Color color1, color2;
  final String title, title2, title3, aciklama,free, title4, title5, title6;

  SaleBannerScreen(
      {required this.color1,
      required this.color2,
      required this.title,
      required this.title2,
      required this.title3,
      required this.aciklama, required this.free, required this.title4, required this.title5, required this.title6});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Colors.purple,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color1, color2])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        title2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        title3,
                        style: TextStyle(color: Colors.grey[400], fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Text(
                  aciklama,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: PremiumButton(free),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                      children: [
                        TextSpan(
                            text:
                                title4),
                        TextSpan(
                            text: title5,
                            style: TextStyle(color: Colors.grey[300])),
                        TextSpan(text: title6)
                      ])),
            ),
          ],
        ));
  }
}

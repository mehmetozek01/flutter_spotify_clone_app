import 'package:flutter/material.dart';
import 'package:flutter_spotify_app/foundation/sp_icon/sp_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Item extends StatelessWidget {
  const Item(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.assetName,
      this.color,
      this.onTap});
  final String title;
  final Color? color;
  final String subtitle;
  final String assetName;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: 68,
            child: ListTile(
              leading: SPIcon(
                assetname: assetName,
              ),
              title: Text(
                title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              subtitle: Row(
                children: [
                  Container(
                    width: 40.0,
                    height: 15.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3), color: color),
                    child: const Center(
                      child: Text(
                        'LYRCIS',
                        style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
              trailing: InkWell(
                onTap: () {},
                child: const Icon(
                  FontAwesomeIcons.ellipsisVertical,
                  size: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

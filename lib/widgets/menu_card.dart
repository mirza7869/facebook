import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {

  final Icon? cardIcon;
  final String? cardTitle;
  final Widget? cardSubtitle;

  const MenuCard({Key? key, this.cardIcon, this.cardTitle, this.cardSubtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width/2.6,
        height: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            cardIcon ?? const SizedBox(),
            Text(cardTitle ?? '', style: const  TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            cardSubtitle ?? const SizedBox(),
          ],
        ),
    );
  }
}

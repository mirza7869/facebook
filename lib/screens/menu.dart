import 'package:flutter/material.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      color: Colors.grey.shade300,
      child: SingleChildScrollView(
        child: Column(
          children:  <Widget>[
            const MenuHeader(),
            const Divider(),
            Row(
              children: const <Widget>[
                CircleAvatar(
                  radius: 18,
                ),
                SizedBox(width: 10.0,),
                Text('Professional Tech'),
              ],
            ),
            const SizedBox(height: 10.0,),
            Row(
              children: const <Widget>[
                CircleAvatar(
                  radius: 18,
                ),
                SizedBox(width: 10.0,),
                Text('Skill Academy'),
              ],
            ),
            const SizedBox(height: 10.0,),
            Row(
              children: const <Widget>[
                CircleAvatar(
                  radius: 18,
                ),
                SizedBox(width: 10.0,),
                Text('Professional Tech'),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const MenuCard(
                      cardIcon: Icon(Icons.favorite_outlined, color: Colors.red,),
                      cardTitle: 'COVID-19',
                      cardSubtitle: Text('Information Center'),
                    ),
                    const MenuCard(
                      cardIcon: Icon(Icons.groups, color: Colors.blue,),
                      cardTitle: 'Groups',
                    ),
                    const MenuCard(
                      cardIcon: Icon(Icons.ondemand_video_sharp, color: Colors.blue,),
                      cardTitle: 'Videos on Watch',
                    ),
                    MenuCard(
                      cardIcon: const Icon(Icons.save, color: Colors.purple,),
                      cardTitle: 'SAVED',
                        cardSubtitle: Row(
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.red,
                            ),
                            SizedBox(width: 5.0,),
                            Text('9 new')
                          ],
                        ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    MenuCard(
                      cardIcon: const Icon(Icons.flag, color: Colors.deepOrange,),
                      cardTitle: 'Pages',
                      cardSubtitle: Row(
                        children: const <Widget>[
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(width: 5.0,),
                          Text('9 new')
                        ],
                      ),
                    ),
                    MenuCard(
                      cardIcon: const Icon(Icons.access_time_sharp, color: Colors.blue,),
                      cardTitle: 'Memories',
                      cardSubtitle: Row(
                        children: const <Widget>[
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(width: 5.0,),
                          Text('9 new')
                        ],
                      ),
                    ),
                    MenuCard(
                      cardIcon: const Icon(MdiIcons.facebookGaming, color: Colors.blue,),
                      cardTitle: 'Gaming',
                      cardSubtitle: Row(
                        children: const <Widget>[
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(width: 5.0,),
                          Text('9 new')
                        ],
                      ),
                    ),
                    const MenuCard(
                      cardIcon: Icon(Icons.groups, color: Colors.blue,),
                      cardTitle: 'Friends',
                    ),
                    const MenuCard(
                      cardIcon: Icon(Icons.event, color: Colors.blue,),
                      cardTitle: 'Events',

                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

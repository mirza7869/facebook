import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'widgets.dart';
class GameHeader extends StatelessWidget {
  const GameHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Games', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Row(
                  children: <Widget>[
                    CircleButton(
                      onPressed: (){},
                      icon: const Icon(Icons.add_circle,color: Colors.black,),
                      backgroundColor: Colors.grey.shade300,
                      radius: 20,
                    ),
                    CircleButton(
                      onPressed: (){},
                      icon: const Icon(Icons.settings,color: Colors.black,),
                      backgroundColor: Colors.grey.shade300,
                      radius: 20,
                    ),
                    CircleButton(
                      onPressed: (){},
                      icon: const Icon(Icons.search,color: Colors.black,),
                      backgroundColor: Colors.grey.shade300,
                      radius: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Chip(
                  label: const Text('For You', style: TextStyle(color: Colors.blue),),
                  avatar: const Icon(MdiIcons.facebookGaming, color: Colors.blue,),
                  backgroundColor: Colors.blue.shade50,
                ),
                const Chip(
                  label:  Text('Game', style: TextStyle(color: Colors.blue),),
                  avatar: Icon(MdiIcons.gamepadCircle, color: Colors.blue,),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index)
                {
                  if(index == 0)
                  {
                  return const Icon(Icons.access_time);
                  }
                  return const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/6.jpg'),
                  ),
                  );
                }
            )
          ),
        ],
      ),
    );
  }
}

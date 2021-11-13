import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'widgets.dart';
import 'package:flutter/material.dart';

class GroupHeader extends StatelessWidget {
  const GroupHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Groups', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                 Chip(
                    label: const Text('For You', style: TextStyle(color: Colors.blue),),
                  avatar: const Icon(Icons.person, color: Colors.blue,),
                  backgroundColor: Colors.blue.shade50,
                ),
                const Chip(
                  label:  Text('Your Groups', style: TextStyle(color: Colors.blue),),
                  avatar: Icon(Icons.group, color: Colors.blue,),
                ),
                const Chip(
                  label:  Text('Discover', style: TextStyle(color: Colors.blue),),
                  avatar: Icon(MdiIcons.findReplace, color: Colors.blue,),
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
                    return Container(
                      margin: const  EdgeInsets.only(right: 5.0, bottom: 10.0),
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/3.jpg'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    );
                  }
              ),
          ),

        ],
      ),
    );
  }
}

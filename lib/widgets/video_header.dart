import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';

class VideoHeader extends StatelessWidget {
  const VideoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: 250,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Watch', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Row(
                  children: <Widget>[
                    CircleButton(
                      onPressed: (){},
                      icon: const Icon(Icons.person,color: Colors.black,),
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
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Chip(
                      label: const Text('For You', style: TextStyle(color: Colors.blue) ,),
                    backgroundColor: Colors.blue.shade50,
                  ),
                  const SizedBox(width: 10.0,),
                  const Chip(
                    label: Text('LIVE'),
                  ),
                  const SizedBox(width: 10.0,),
                  const Chip(
                    label: Text('Following'),
                  ),
                  const SizedBox(width: 10.0,),
                  const Chip(
                    label: Text('Saved'),
                  ),
                  const SizedBox(width: 10.0,),
                  const Chip(
                    label: Text('Gaming'),
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

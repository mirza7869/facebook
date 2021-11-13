import 'package:flutter/material.dart';
import 'widgets.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Audio and Video Rooms',style: TextStyle(fontWeight: FontWeight.bold),),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 100,
                  itemBuilder: (context, index)
                  {
                    if(index == 0)
                      {
                        return BlockButton(
                            onPress: (){},
                            child: Text('Create Room',style: TextStyle(color: Colors.blue.shade800),),
                          backgroundColor: Colors.blue.shade50,
                        );
                      }
                    return const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/3.jpg'),
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

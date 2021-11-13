import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      //height: 200,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
            child: Row(
              children: <Widget>[
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/1.jpg'),
                ),
                const SizedBox(width: 10,),
                OutlinedButton(
                    onPressed: (){},
                    child:const Text("What's is yours mind?",style: TextStyle(color: Colors.black),),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(size.width - 70, 45)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                PostButton(
                    onPress: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const  <Widget>[
                        Icon(Icons.video_call, color: Colors.red,),
                        SizedBox(width: 3.0,),
                        Text('Live')
                      ],
                    ),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  buttonSize: const Size(80,25),
                ),
                Container(
                  height: 30,
                  width: 1.0,
                  color: Colors.grey.shade300,
                ),
                PostButton(
                  onPress: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const  <Widget>[
                      Icon(Icons.photo_library_sharp, color: Colors.green,),
                      SizedBox(width: 3.0,),
                      Text('Photos')
                    ],
                  ),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  buttonSize: const Size(80,25),
                ),
                Container(
                  height: 30,
                  width: 1.0,
                  color: Colors.grey.shade300,
                ),
                PostButton(
                  onPress: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const  <Widget>[
                      Icon(Icons.video_call, color: Colors.purple,),
                      SizedBox(width: 3.0,),
                      Text('Room')
                    ],
                  ),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  buttonSize: const Size(80,25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

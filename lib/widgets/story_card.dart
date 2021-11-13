import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:8.0),
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      width: MediaQuery.of(context).size.width,
      height: 180,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (context, index)
        {
          if(index == 0)
            {

            }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: Container(
              width: 100,
              height: 160,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/4.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: const <Widget>[
                  Positioned(
                    top: 10.0,
                      left: 10.0,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.red,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.transparent,
                          child: CircleAvatar(
                            radius: 14,
                            backgroundImage: AssetImage('assets/images/6.jpg'),
                          ),
                        ),
                      ),
                  ),
                  Positioned(
                    bottom: 3.0,
                      child: Text('Username', style: TextStyle(color: Colors.white),)
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}

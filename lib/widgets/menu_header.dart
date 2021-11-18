import 'package:flutter/material.dart';
import 'widgets.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('Menu', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  CircleButton(
                    onPressed: (){},
                    icon: const Icon(Icons.search,color: Colors.black,),
                    backgroundColor: Colors.grey.shade300,
                    radius: 20,
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/1.jpg'),
              ),
              title: Text('User Name'),
              subtitle: Text('See your Profile'),
            ),
          ],
      ),
    );
  }
}

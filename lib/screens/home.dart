import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue.shade800,
        title: const Text('FaceBook',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,letterSpacing: -0.5),),
        actions:  <Widget>[
          CircleButton(
            icon:const Icon(Icons.search,color: Colors.black,),
            backgroundColor: Colors.grey.shade200,
            onPressed: (){},
            radius: 22,
          ),
          CircleButton(
              icon:const Icon(MdiIcons.facebookMessenger,color: Colors.black,),
              backgroundColor: Colors.grey.shade200,
            onPressed: (){},
            radius: 22,
          ),
        ],
        elevation: 2.0,
        bottom: TabBar(
          controller: tabController,
          tabs:  <Widget>[
            Tab(icon: Icon(Icons.home,color: Colors.blue.shade800,),),
            Tab(icon: Icon(Icons.group,color: Colors.blue.shade800,),),
            Tab(icon: Icon(Icons.ondemand_video,color: Colors.blue.shade800,),),
            Tab(icon: Icon(MdiIcons.facebookGaming,color: Colors.blue.shade800,),),
            Tab(icon: Icon(Icons.notifications,color: Colors.blue.shade800,),),
            Tab(icon: Icon(Icons.menu,color: Colors.blue.shade800,),),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const <Widget>[
          FeedScreen(),
          GroupScreen(),
          VideoScreen(),
          GameScreen(),
          NotificationScreen(),
          MenuScreen(),
        ],
      ),
    );
  }
}

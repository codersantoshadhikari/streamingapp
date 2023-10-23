import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:streamingapp/screens/explore/explore.dart';
import 'package:streamingapp/screens/games/games.dart';
import 'package:streamingapp/screens/profile/profile.dart';
import 'package:streamingapp/screens/search/search.dart';
import 'package:streamingapp/utils/constants.dart';

class Master extends StatefulWidget {
  const Master({super.key});

  @override
  State<Master> createState() => _MasterState();
}

class _MasterState extends State<Master> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 250),
        child: getBody(),
      ),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: page,
      children: [Explore(), Search(), Games(), Profile()],
    );
  }

  Widget getBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: kBottomNavigationBar,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[600],
      currentIndex: page,
      onTap: (index) {
        setState(
          () {
            page = index;
          },
        );
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.trophy),
          label: 'Games',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: 'Profile',
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}

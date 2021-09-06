import 'package:flutter/material.dart';
import 'package:movie_application/screen/favorite_screen.dart';
import 'package:movie_application/screen/profile_screen.dart';
import 'package:movie_application/screen/search_screen.dart';
import 'package:movie_application/widget/drawer_item.dart';

class DrawerMenu extends StatelessWidget {

  _navigator(BuildContext context, Widget page) {
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: size.height * 0.25,
              width: size.width,
              color: Colors.red,
            ),
            DrawerItem(
              icon: Icons.home,
              name: 'Home',
              onPress: (){
                Navigator.pop(context);
              },
            ),
            DrawerItem(
              icon: Icons.search,
              name: 'Search',
              onPress: (){_navigator(context, SearchScreen());},
            ),
            DrawerItem(
              icon: Icons.favorite,
              name: 'Favorite',
              onPress: (){_navigator(context, FavoriteScreen());},
            ),
            DrawerItem(
              icon: Icons.calendar_view_day_sharp,
              name: 'Buy Account',
              onPress: (){_navigator(context, ProfileScreen());},
            ),
            DrawerItem(
              icon: Icons.person_pin,
              name: 'Profile',
              onPress: (){_navigator(context, ProfileScreen());},
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {

  final IconData icon;
  final String name;
  final Function onPress;

  DrawerItem({
    required this.icon,
    required this.name,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {onPress();},
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 15,),
            Text(name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
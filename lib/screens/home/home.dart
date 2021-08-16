import 'package:flutter/material.dart';

import '../../constants.dart';
import 'body.dart';

//create a statefull widget

// you can give any name to your statefull class
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background color
      backgroundColor: kBgColor,
      //now we create appbar
      appBar: AppBar(
        // appbar color
        backgroundColor: Colors.transparent,
        elevation: 0,
        //app name
        title: Text(
          'YBY Shop',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          //copy the circleAvatar and create the user in the menu
        ],
      ),
      body: Body(),
      //app menu
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Professor'),
              accountEmail: Text('professor@lacasadepapel.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/professor.jpg',
                ),
              ),
            ),
            MenuList(
              press: () {},
              title: 'Home',
              icon: Icons.home,
            ),
            MenuList(
              press: () {},
              title: 'Category',
              icon: Icons.dashboard,
            ),
            MenuList(
              press: () {},
              title: 'Carts',
              icon: Icons.shopping_cart,
            ),
            Divider(
              color: kPrimaryColor,
            ),
            MenuList(
              press: () {},
              title: 'Setting',
              icon: Icons.settings,
            ),
            MenuList(
              press: () {},
              title: 'About',
              icon: Icons.help,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  const MenuList({
    Key? key,
    required this.title,
    required this.press,
    required this.icon,
  }) : super(key: key);
  final String title;
  final Function press;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    //replace gesturedetecture with inkwell
    return InkWell(
      onTap: press(),
      child: ListTile(
        title: Text(title),
        leading: Icon(
          icon,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}

/// our app is ready

//now we create our app primary color
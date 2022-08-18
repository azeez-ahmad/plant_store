import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../components/my_bottom_nav_bar.dart';
import '../../drawer.dart';
import './components/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const HomeBody(),//this is the body of homepage
      bottomNavigationBar: const MyBottomNavBar(key: Key("__home__Screen__bottom_nav"),),//this is bottom navigation bar
      drawer: const Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: MyCustomDrawer(key: Key("KEY____DRAW_HOME"),),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.green,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}

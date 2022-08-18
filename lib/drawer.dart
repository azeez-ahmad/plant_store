import 'package:flutter/material.dart';
import 'package:plant_store/screens/all_product/all_product.dart';
import 'package:plant_store/screens/home/home_screen.dart';
import 'package:plant_store/screens/profile/profile.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Jump to..'),
        ),
        ListTile(
          title: const Text('Home'),
          onTap: () {
            MaterialPageRoute(
              builder: (context) => const HomeScreen(
                key: Key("home_drawer__NAV____key____"),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('All Products'),
          onTap: () {
            MaterialPageRoute(
              builder: (context) => const AllProduct(
                key: Key("fsdf23__NAV__drawer__key____"),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('Profile'),
          onTap: () {
            MaterialPageRoute(
              builder: (context) => const Profile(),
            );
          },
        ),
      ],
    );
  }
}

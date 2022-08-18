import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/my_bottom_nav_bar.dart';
import '../../constants.dart';
import '../../drawer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  padding:
                   const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(140),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Mr XYZ  ",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text("XYYZ ZXYYY"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    icon: const FaIcon(FontAwesomeIcons.github),
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.pink),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                      ),
                    ),
                    label: const Text(
                      "GitHub",
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  ElevatedButton.icon(
                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.pink),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                      ),
                    ),
                    label: const Text(
                      "LinkedIn",
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const MyBottomNavBar(key: Key("__home__Screen__bottom_nav_from_profile"),),
        drawer: const Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: MyCustomDrawer(key: Key("KEY____DRAW_PRODILE"),),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/my_bottom_nav_bar.dart';
import '../data/plant.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key, required this.plant});

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Checkout Form';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            onPressed: () {},
          ),
        ),
        body: const MyCustomForm(),
        bottomNavigationBar: const MyBottomNavBar(
          key: Key("__home__Screen__bottom_nav__checkout"),
        ), //this is bottom navigation bar
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(5),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter full name';
                  }
                  return null;
                },
              )),
          Padding(
              padding: const EdgeInsets.all(5),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter correct email';
                  }
                  return null;
                },
              )),
          Padding(
              padding: const EdgeInsets.all(5),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Address',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter address';
                  }
                  return null;
                },
              )),
          Padding(
              padding: const EdgeInsets.all(5),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Phone',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter phone number';
                  }
                  return null;
                },
              )),
          Padding(
              padding: const EdgeInsets.all(5),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Credit Card',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter credit card';
                  }
                  return null;
                },
              )),
          Padding(
              padding: const EdgeInsets.all(5),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'CVV',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter CVV';
                  }
                  return null;
                },
              )),
          Padding(
              padding: const EdgeInsets.all(5),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Expiry Date',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter expiry date';
                  }
                  return null;
                },
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('🟩Purchase Successful'),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

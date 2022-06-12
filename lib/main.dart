import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // removes the debug banner on emulator
      home: Scaffold(
        // provide a basic canvas for flutter app
        backgroundColor:
            Colors.teal, // a property of scaffold widget which sets bg color
        body: SafeArea(
          // makes sure app is within screen dimensions and visible
          child: Center(
            child: Column(
              // makes all its children align vertically
              mainAxisAlignment: MainAxisAlignment.center,
              //property of column to align children in center
              children: [
                const CircleAvatar(
                  // widget to make a circle avatar
                  radius: 50,
                  backgroundImage: AssetImage('images/image1.jpg'),
                  // Asset Image is a widget which pull images from Assets i.e Pubspec.yaml
                  // always write the image extension as well along with the file path
                ),
                //always add commas (,) after closing a widget or writing a property
                // it helps dart format the code automatically
                const Text(
                  'Zenitsu',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0),
                ),
                Text(
                  'DEMON SLAYER',
                  style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // third widget in our column
                SizedBox(
                  // SizedBox Widget simply helps create a sized box of set dimensions
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    // draws a dividing line
                    color: Colors.teal[50],
                  ),
                ),
                const Card(
                  // a widget to create a card like UI component
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
                  // creates a margin in the card
                  // margin helps child of Card stay away from Card boundary
                  child: ListTile(
                    // A single fixed-height row that typically contains some text
                    // as well as a leading or trailing icon.
                    leading: Icon(
                      // Icon Widget to add icon
                      Icons.phone,
                      size: 20.0,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+12345678',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
                // duplicate the above Card widget ( copy paste )
                // edit just the icon and text (line: 99 & 104)
                const Card(
                  // a widget to create a card like UI component
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
                  // creates a margin in the card
                  // margin helps child of Card stay away from Card boundary
                  child: ListTile(
                    // A single fixed-height row that typically contains some text
                    // as well as a leading or trailing icon.
                    leading: Icon(
                      // Icon Widget to add icon
                      Icons.email_rounded,
                      size: 20.0,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'zenitsu@demonslayer.com',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

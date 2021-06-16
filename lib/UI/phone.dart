import 'package:flutter/material.dart';
import 'package:phone_ui/UI/contacts.dart';
import 'package:phone_ui/UI/favourites.dart';
import 'package:phone_ui/UI/recent.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  int _selectedIndex = 1;

  List<Widget> _widgetOptions = <Widget>[
    Favourites(),
    Recent(),
    Contacts(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Container(
          padding: EdgeInsets.all(15.0),
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: Icon(
                Icons.mic_none_outlined,
                color: Colors.grey,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7.5),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7.5),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              hintText: "Search contacts and places",
              hintStyle: TextStyle(
                fontFamily: 'SF Pro Display',
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedIconTheme: IconThemeData(
          color: Color(0xff1a73e9),
        ),
        iconSize: 30.0,
        selectedLabelStyle: TextStyle(fontSize: 14),
        unselectedLabelStyle: TextStyle(fontSize: 14),
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_rounded),
            label: "Favourites",
            activeIcon: Icon(Icons.star_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_rounded),
            label: "Recent",
            activeIcon: Icon(Icons.access_time_filled_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline_rounded),
            label: "Contacts",
            activeIcon: Icon(Icons.people_rounded),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff1a73e9),
        elevation: 0.0,
        child: Icon(
          Icons.dialpad_rounded,
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}

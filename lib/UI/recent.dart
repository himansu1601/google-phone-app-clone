import 'package:flutter/material.dart';

class Recent extends StatefulWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  _RecentState createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  List<Map> _todayRecents = <Map>[
    {
      "name": "Unknown",
      "number": "+91 99999 9999",
      "number_type": "Mobile",
      "type": "incoming",
    },
    {
      "name": "Unknown",
      "number": "+91 99999 9999",
      "number_type": "Mobile",
      "type": "outgoing",
    },
    {
      "name": "Unknown",
      "number": "+91 99999 9999",
      "number_type": "Mobile",
      "type": "missed",
    },
  ];
  List<Map> _yesterdayRecents = <Map>[
    {
      "name": "Mom",
      "number": "+91 99999 9999",
      "number_type": "Mobile",
      "type": "incoming",
    },
    {
      "name": "Prakash",
      "number": "+91 99999 9999",
      "number_type": "Mobile",
      "type": "outgoing",
    },
    {
      "name": "Unknown",
      "number": "+91 88888 88888",
      "number_type": "Mobile",
      "type": "missed",
    },
  ];
  List<Map> _olderRecents = [];

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Container(
              width: deviceWidth,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "TODAY",
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 20),
            ListView.separated(
              shrinkWrap: true,
              itemCount: _todayRecents.length,
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 15),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff1a73e9),
                    ),
                    child: Icon(
                      Icons.person_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: Text(_todayRecents[index]['name'] == "Unknown"
                      ? _todayRecents[index]['number']
                      : _todayRecents[index]['name']),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            _todayRecents[index]["type"] == "incoming"
                                ? Icons.call_received_rounded
                                : _todayRecents[index]['type'] == "outgoing"
                                    ? Icons.call_made_rounded
                                    : Icons.call_missed_rounded,
                            color: _todayRecents[index]['type'] == "missed"
                                ? Colors.red
                                : Colors.grey,
                            size: 15,
                          ),
                          Text(" "),
                          Text(
                            _todayRecents[index]["number_type"],
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 12.5,
                              color: _todayRecents[index]['type'] == "missed"
                                  ? Colors.red
                                  : Colors.grey,
                            ),
                          ),
                          Text(
                            " • ",
                            style: TextStyle(
                              fontSize: 20,
                              color: _todayRecents[index]['type'] == "missed"
                                  ? Colors.red
                                  : Colors.grey,
                            ),
                          ),
                          Text(
                            "Mon",
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 12.5,
                              color: _todayRecents[index]['type'] == "missed"
                                  ? Colors.red
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Jio".toUpperCase(),
                        style: TextStyle(
                          fontFamily: "SF Pro Display",
                          color: Colors.green,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.call_outlined),
                );
              },
            ),
            SizedBox(height: 20),
            Container(
              width: deviceWidth,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "YESTERDAY",
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 20),
            ListView.separated(
              shrinkWrap: true,
              itemCount: _todayRecents.length,
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 15),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff1a73e9),
                    ),
                    child: Icon(
                      Icons.person_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: Text(_yesterdayRecents[index]['name'] == "Unknown"
                      ? _yesterdayRecents[index]['number']
                      : _yesterdayRecents[index]['name']),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            _yesterdayRecents[index]["type"] == "incoming"
                                ? Icons.call_received_rounded
                                : _yesterdayRecents[index]['type'] == "outgoing"
                                    ? Icons.call_made_rounded
                                    : Icons.call_missed_rounded,
                            color: _yesterdayRecents[index]['type'] == "missed"
                                ? Colors.red
                                : Colors.grey,
                            size: 15,
                          ),
                          Text(" "),
                          Text(
                            _yesterdayRecents[index]["number_type"],
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 12.5,
                              color:
                                  _yesterdayRecents[index]['type'] == "missed"
                                      ? Colors.red
                                      : Colors.grey,
                            ),
                          ),
                          Text(
                            " • ",
                            style: TextStyle(
                              fontSize: 20,
                              color: _todayRecents[index]['type'] == "missed"
                                  ? Colors.red
                                  : Colors.grey,
                            ),
                          ),
                          Text(
                            "Sun",
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 12.5,
                              color: _todayRecents[index]['type'] == "missed"
                                  ? Colors.red
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Jio".toUpperCase(),
                        style: TextStyle(
                          fontFamily: "SF Pro Display",
                          color: Colors.green,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.call_outlined),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'clipedHeaderWidget.dart';
import 'cardWidgets.dart';
import 'apiService.dart';

var apiCall = new ApiHandeler();
void main() => runApp(
      MaterialApp(
        home: SafeArea(
          child: MyApp(),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<dynamic> covidData = apiCall.getData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.access_time),
          onPressed: () {
            setState(() {
              covidData = apiCall.getData();
            });
          }),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            appHeaderContainer(),
            CustomCards(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.deepOrangeAccent,
                      size: 20.0,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: Text(
                        'India',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'BalooBhaina',
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 20,
                    ),
                  ),
                ],
              ),
              height: 50.0,
              width: double.infinity,
              borderRadius: 25,
              padding: EdgeInsets.symmetric(horizontal: 25),
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            CustomCards(
                width: double.infinity,
                height: 190,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                borderRadius: 10.0,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      color: Colors.yellow,
                      size: 35.0,
                    ),
                    Text(
                      'Current Cases',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 31.0,
                        fontFamily: 'BalooBhaina',
                      ),
                    ),
                    Container(
                      width: 180.0,
                      child: Divider(
                        height: 1.0,
                      ),
                    ),
                    Text(
                      '${covidData[0]}',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 31.0,
                        fontFamily: 'BaloooBhaina',
                      ),
                    ),
                  ],
                )),
            CustomCards(
              height: 130,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              padding: EdgeInsets.all(10.0),
              borderRadius: 10,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          color: Colors.green,
                          size: 20.0,
                        ),
                        Text(
                          'Recovered',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20.0,
                            fontFamily: 'BalooBhaina',
                          ),
                        ),
                        Container(
                          width: 100.0,
                          child: Divider(
                            height: 1.0,
                          ),
                        ),
                        Text(
                          '${covidData[1]}',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20.0,
                            fontFamily: 'BalooBhaina',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          color: Colors.redAccent,
                          size: 20.0,
                        ),
                        Text(
                          'Deaths',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20.0,
                            fontFamily: 'BalooBhaina',
                          ),
                        ),
                        Container(
                          width: 100.0,
                          child: Divider(
                            height: 1.0,
                          ),
                        ),
                        Text(
                          '${covidData[2]}',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20.0,
                            fontFamily: 'BalooBhaina',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // CustomCards(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: <Widget>[
            //       barGraph(
            //           color: Colors.yellow,
            //           element: 'Infected',
            //           value: covidData[0],
            //           div: covidData[0]),
            //       barGraph(
            //           color: Colors.green,
            //           element: 'Recovered',
            //           value: covidData[1],
            //           div: covidData[0]),
            //       barGraph(
            //           color: Colors.red,
            //           element: 'Deaths',
            //           value: covidData[2],
            //           div: covidData[0]),
            //     ],
            //   ),
            //   height: 300.0,
            //   width: double.infinity,
            //   borderRadius: 10.0,
            //   padding: EdgeInsets.symmetric(horizontal: 25),
            //   margin: EdgeInsets.all(10.0),
            // ),
          ],
        ),
      ),
    );
  }
}

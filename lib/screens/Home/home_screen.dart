import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:taxi_booking/Core/colour.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 1,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 21.0, right: 21.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Container(
                              width: 50,
                              child: ClipOval(
                                child: Image.network(
                                    'https://cdn.pixabay.com/photo/2020/11/04/07/52/pumpkin-5711688_960_720.jpg'),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 40),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Good morning ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: 'Mark',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: colours.primary),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Where are you Going?",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(12)),
                              depth: 8,
                              lightSource: LightSource.topLeft,
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextField(),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .8,
                child: Stack(
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Septemper",
              style: TextStyle(fontSize: 18, color: Colors.orange),
            ),
            Text(
              "october",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "November",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "December",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "1",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Text(
              "2",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Text(
              "3",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Text(
              "4",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Text(
              "5",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Text(
              "6",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView(
            children: [
              Card(
                  company: "Company A-Pickup",
                  loction: "Loction1",
                  ml: "300 ML",
                  price: r"$500"),
              SizedBox(
                height: 30,
              ),
              Card(
                  company: "Company B-Pickup",
                  loction: "Loction2",
                  ml: "500 ML",
                  price: r"$600"),
            ],
          ),
        ),
      ],
    );
  }
}

class Card extends StatelessWidget {
  const Card(
      {super.key,
      required this.company,
      required this.loction,
      required this.price,
      required this.ml});
  final String company;
  final String loction;
  final String price;
  final String ml;

  @override
  Widget build(BuildContext context) {
    double _value = 100;

    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: MediaQuery.of(context).size.height * .46,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                blurRadius: 1,
                color: Colors.grey,
                offset: Offset(1, 1),
                spreadRadius: 1.5),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "300",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 50,
                            height: 200,
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Slider(
                                thumbColor: Colors.orange,
                                value: _value,
                                activeColor: Colors.grey,
                                inactiveColor: Colors.grey,
                                max: 100,
                                divisions: 5,
                                label: _value.toString(),
                                secondaryTrackValue: 50,
                                onChanged: (valu) {
                                  valu = _value;
                                },
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "distanc ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "2023-8-10",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Company A-Pickup",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Loction 1",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 80,
                                  ),
                                  Text(
                                    company,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    loction,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "2023-8-10",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        ml,
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Total",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                height: 10,
                color: Colors.orange,
                thickness: 1.8,
                indent: 0,
                endIndent: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Shipeper rate",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:like_button/like_button.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String location;
  final String place;
  final String price;
  final String open;
  final String details;
  final int index;
  DetailsPage(
      {required this.imagePath,
      required this.location,
      required this.place,
      required this.price,
      required this.open,
      required this.details,
      required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 614) {
        return Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Hero(
                  tag: 'logo$index',
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 260,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place,
                            style: const TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            location,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.calendar_month),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                open,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.attach_money_rounded),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                price,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            details,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back),)),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: LikeButton()
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      } else {
        return Expanded(
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text('WISATA BANDUNG',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imagePath), fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.01,
                  ),
                  Container(
                    width: constraints.maxWidth * 0.3,
                    height: 300,
                    child: Expanded(
                      child: Card(
                        color: Colors.white,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 100, right: 100)),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                place,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.calendar_month),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Text(
                                      open,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: SizedBox(
                                    width: 300,
                                  )),
                                  LikeButton()
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(Icons.attach_money_rounded),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Text(
                                      price,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                details,
                                textAlign: TextAlign.justify,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
        );
      }
    }));
  }
}

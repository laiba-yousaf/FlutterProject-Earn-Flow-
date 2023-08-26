import 'package:flutter/material.dart';
import 'package:login_project/Readarticle.dart';
import 'package:login_project/constant/images.dart';
import 'package:login_project/play_game.dart';
import 'package:login_project/referral_task.dart';
import 'package:login_project/versionfile.dart';
import 'package:login_project/video.dart';
import 'package:login_project/widgets/dashboard.dart';
import 'package:login_project/widgets/myspacer.dart';

import 'constant/style.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List offers = [
    {
      "title": "GAMES",
      "img": game,
    },
    {"title": "VIDEOS", "img": video_img},
    {"title": "OVERWALLS", "img": overwalls},
    {"title": "VISIT & EARN", "img": visitEarn},
    {"title": "YOUTUBE", "img": youtube},
    {"title": "APP OFFER", "img": app_offer},
    {"title": "FURTUNE SPIN", "img": spin},
    {"title": "REFER TASK", "img": refer},
  ];

  List Rewards = [
    {"img1": reward_img1},
    {"img1": reward_img2},
    {"img1": reward_img1},
    {"img1": reward_img1},
    {"img1": reward_img1},
    {"img1": reward_img1},
  ];

  List pages = [read(),video(),game_page(), version_file(), referral()];
  @override
  Widget build(BuildContext context) {
    var vheight = MediaQuery.of(context).size.height;
    var vwidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 5),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(profile),
                                width: 50,
                                height: 50,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Hello,Ali Khan",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage(gold_coin),
                                        width: 30,
                                        height: 30,
                                      ),
                                      Text(
                                        "21",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("EF Coins"),
                                    ],
                                  ),
                                ],
                              ),
                              myspacer(0.0, 50.0),

                              //myspacer(0.0, 65.0),
                              Container(
                                width: 170,
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage(rocket),
                                      height: 40,
                                      width: 40,
                                    ),
                                    Stack(children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 60),
                                        child: Image(
                                          image: AssetImage(coin),
                                          height: 70,
                                          width: 70,
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        top: 35,
                                        //right: 10,
                                        child: Container(
                                          height: 25,
                                          width: 90,
                                          child:
                                              Center(child: Text("withdraw")),
                                          decoration: BoxDecoration(
                                              color:
                                                  whiteColor.withOpacity(0.5),
                                              //color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: primaryColor,
                                                  width: 2)),
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Image(image: AssetImage(slider_img)),
                      myspacer(10.0, 0.0),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: borderColor, width: 1)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Top Offers",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      myspacer(0.0, 10.0),
                                      Image(
                                        image: AssetImage(telescope),
                                        width: 30,
                                        height: 30,
                                      )
                                    ],
                                  ),
                                ),
                                GridView.builder(
                                    shrinkWrap: true,
                                    itemCount: offers.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      //mainAxisSpacing: 8,
                                      //crossAxisSpacing: 8
                                    ),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Center(
                                        child: Container(
                                          height: 300,
                                          width: 200,
                                          child: GestureDetector(
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  side: BorderSide(
                                                      color: borderColor
                                                          .withOpacity(0.5),
                                                      width: 1)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      offers[index]["title"],
                                                      style: const TextStyle(
                                                        fontSize: 10,
                                                        //color: Colors.black,
                                                        //fontWeight: FontWeight.bold,
                                                        //textAlign: TextAlign.center,
                                                        //padding: EdgeInsets.all(8.0),
                                                      ),
                                                    ),
                                                    Container(
                                                        height: 50,
                                                        width: 50,
                                                        child: Image.asset(
                                                            offers[index]
                                                                ["img"])),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        pages[index]),
                                              );
                                            },
                                          ),
                                        ),
                                      );
                                    }),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side:
                                      BorderSide(color: borderColor, width: 1)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, top: 8),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Top Games",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          myspacer(0.0, 10.0),
                                          Image(
                                            image: AssetImage(game),
                                            width: 30,
                                            height: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20),
                                                child: Container(
                                                  width: 300,
                                                  height: 100,
                                                  //color: Colors.black,
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            side: const BorderSide(
                                                                color:
                                                                    borderColor,
                                                                width: 1)),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: Row(
                                                  children: [
                                                    const Positioned(
                                                        left: 30,
                                                        //top: 20,
                                                        child: Image(
                                                          image:
                                                              AssetImage(game1),
                                                          width: 100,
                                                          height: 100,
                                                        )),
                                                    myspacer(0.0, 10.0),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text(
                                                            "Push Royale Multiplayer"),
                                                        Text(
                                                            "Playn & earn Upto 5 coins")
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Positioned(
                                                left: 40,
                                                top: 80,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: primaryColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      height: 20,
                                                      width: 40,
                                                      child: const Center(
                                                          child: Text(
                                                        "#1",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                    ),
                                                    myspacer(0.0, 150.0),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: primaryColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      height: 20,
                                                      width: 60,
                                                      child: const Center(
                                                          child: Text(
                                                        "play",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ]))),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: borderColor, width: 1)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 8, top: 8),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Daily Rewards",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        myspacer(0.0, 10.0),
                                        const Image(
                                          image: AssetImage(reward_symobol),
                                          width: 30,
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                  GridView.builder(
                                      shrinkWrap: true,
                                      itemCount: Rewards.length,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 6,
                                        //mainAxisSpacing: 2,
                                        //crossAxisSpacing:2
                                      ),
                                      itemBuilder:
                                          (BuildContext context, int index1) {
                                        return Row(
                                          children: [
                                            Image.asset(Rewards[index1]["img1"])
                                          ],
                                        );
                                      }),
                                ])),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side:
                                      BorderSide(color: borderColor, width: 1)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 8, top: 8),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Leader-Board",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        myspacer(0.0, 10.0),
                                        const Image(
                                          image: AssetImage(batch_img),
                                          width: 30,
                                          height: 30,
                                        ),
                                        myspacer(0.0, 130.0),
                                        Text("See All"),
                                      ],
                                    ),
                                  ),
                                  dash_widget(leader_img, "Ali Khan", "No.1",
                                      vwidth, vheight, "15421(Pakistan)"),
                                  dash_widget(leader_img, "Ali Khan", "No.1",
                                      vwidth, vheight, "15421(Pakistan)"),
                                  dash_widget(leader_img, "Ali Khan", "No.1",
                                      vwidth, vheight, "15421(Pakistan)"),
                                  dash_widget(leader_img, "Ali Khan", "No.1",
                                      vwidth, vheight, "15421(Pakistan)"),
                                ],
                              ))),
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          "Home,Leader",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      myspacer(30.0, 0.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text("status"), Text("Profile")],
                      )
                    ]))));
  }
}

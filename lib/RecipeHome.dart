import 'package:flutter/material.dart';
import 'package:new_app/Favourites.dart';
import 'package:new_app/MyProfile.dart';
import 'package:new_app/Notifications.dart';
import 'package:new_app/RecipeView.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform, exit;

class RecipeHome extends StatefulWidget {
  const RecipeHome({super.key});

  @override
  State<RecipeHome> createState() => _RecipeHomeState();
}

class _RecipeHomeState extends State<RecipeHome> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if (Platform.isIOS) {
            try {
              exit(0);
            } catch (e) {
              SystemNavigator
                  .pop(); // for IOS, not true this, you can make comment this :)
            }
          } else {
            try {
              SystemNavigator.pop(); // sometimes it cant exit app
            } catch (e) {
              exit(0); // so i am giving crash to app ... sad :(
            }
          }
          return false;
        },
        child: Scaffold(
            body: SafeArea(
                child: Container(
          decoration: BoxDecoration(
              color: Colors.brown.shade100,
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/app_background.jpg"))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 250,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        child: const Text(
                          "Hello Helen",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Container(
                          //decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(5),
                          child: const SizedBox(
                            height: 80,
                            width: 80,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/green_salad.jpg'),
                            ),
                          ))
                    ]),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.brown.shade50,
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      border: Border.all(
                          color: Colors.brown.shade50,
                          style: BorderStyle.solid)),
                  child: const TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search",
                        hintStyle:
                            TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5.0),
                  child: const Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              color: Colors.brown.shade50,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  color: Colors.brown.shade50,
                                  style: BorderStyle.solid)),
                          child: const SizedBox(
                            child: Text(
                              "BreakFast",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(right: 5, left: 5),
                          decoration: BoxDecoration(
                              color: Colors.brown.shade50,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  color: Colors.brown.shade50,
                                  style: BorderStyle.solid)),
                          child: const SizedBox(
                            child: Text(
                              "Lunch",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(right: 5, left: 5),
                          decoration: BoxDecoration(
                              color: Colors.brown.shade50,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  color: Colors.brown.shade50,
                                  style: BorderStyle.solid)),
                          child: const SizedBox(
                            child: Text(
                              "Dinner",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(right: 5, left: 5),
                          decoration: BoxDecoration(
                              color: Colors.brown.shade50,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  color: Colors.brown.shade50,
                                  style: BorderStyle.solid)),
                          child: const SizedBox(
                            child: Text(
                              "Salads",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(right: 5, left: 5),
                          decoration: BoxDecoration(
                              color: Colors.brown.shade50,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  color: Colors.brown.shade50,
                                  style: BorderStyle.solid)),
                          child: const SizedBox(
                            child: Text(
                              "Desserts",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(right: 5, left: 5),
                          decoration: BoxDecoration(
                              color: Colors.brown.shade50,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  color: Colors.brown.shade50,
                                  style: BorderStyle.solid)),
                          child: const SizedBox(
                            child: Text(
                              "Starters",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                              color: Colors.brown.shade50,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  color: Colors.brown.shade50,
                                  style: BorderStyle.solid)),
                          child: const SizedBox(
                            child: Text(
                              "Cakes",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5.0),
                  child: const Text(
                    "What's New",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(5.0),
                            child: Column(children: [
                              InkWell(
                                  onTap: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RecipeView()))
                                      },
                                  child: Container(
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.brown.shade50,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(50)),
                                          border: Border.all(
                                              color: Colors.brown.shade50,
                                              style: BorderStyle.solid)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const SizedBox(
                                              height: 100,
                                              width: 100,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'assets/green_salad.jpg'),
                                              ),
                                            ),
                                            Container(
                                                width: 210,
                                                margin: const EdgeInsets.all(5),
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Column(children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.all(5),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .brown.shade100,
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    20)),
                                                        border: Border.all(
                                                            color: Colors
                                                                .brown.shade100,
                                                            style: BorderStyle
                                                                .solid)),
                                                    child: const Text(
                                                        "Ghee Roast",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.black)),
                                                  ),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius
                                                                          .circular(
                                                                              20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "100 Cal",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
                                                        ),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius
                                                                          .circular(
                                                                              20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "120 mins",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
                                                        )
                                                      ])
                                                ]))
                                          ]))),
                              InkWell(
                                  onTap: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RecipeView()))
                                      },
                                  child: Container(
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.brown.shade50,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(50)),
                                          border: Border.all(
                                              color: Colors.brown.shade50,
                                              style: BorderStyle.solid)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const SizedBox(
                                              height: 100,
                                              width: 100,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'assets/green_salad.jpg'),
                                              ),
                                            ),
                                            Container(
                                                width: 210,
                                                margin: const EdgeInsets.all(5),
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Column(children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.all(5),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .brown.shade100,
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    20)),
                                                        border: Border.all(
                                                            color: Colors
                                                                .brown.shade100,
                                                            style: BorderStyle
                                                                .solid)),
                                                    child: const Text(
                                                        "Ghee Roast",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.black)),
                                                  ),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius
                                                                          .circular(
                                                                              20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "100 Cal",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
                                                        ),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius
                                                                          .circular(
                                                                              20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "120 mins",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
                                                        )
                                                      ])
                                                ]))
                                          ]))),
                              InkWell(
                                  onTap: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RecipeView()))
                                      },
                                  child: Container(
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.brown.shade50,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(50)),
                                          border: Border.all(
                                              color: Colors.brown.shade50,
                                              style: BorderStyle.solid)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const SizedBox(
                                              height: 100,
                                              width: 100,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'assets/green_salad.jpg'),
                                              ),
                                            ),
                                            Container(
                                                width: 210,
                                                margin: const EdgeInsets.all(5),
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Column(children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.all(5),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .brown.shade100,
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    20)),
                                                        border: Border.all(
                                                            color: Colors
                                                                .brown.shade100,
                                                            style: BorderStyle
                                                                .solid)),
                                                    child: const Text(
                                                        "Ghee Roast",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.black)),
                                                  ),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius
                                                                          .circular(
                                                                              20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "100 Cal",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
                                                        ),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius
                                                                          .circular(
                                                                              20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "120 mins",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
                                                        )
                                                      ])
                                                ]))
                                          ]))),
                              InkWell(
                                  onTap: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RecipeView()))
                                      },
                                  child: Container(
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.brown.shade50,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(50)),
                                          border: Border.all(
                                              color: Colors.brown.shade50,
                                              style: BorderStyle.solid)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const SizedBox(
                                              height: 100,
                                              width: 100,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'assets/green_salad.jpg'),
                                              ),
                                            ),
                                            Container(
                                                width: 210,
                                                margin: const EdgeInsets.all(5),
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Column(children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.all(5),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .brown.shade100,
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    20)),
                                                        border: Border.all(
                                                            color: Colors
                                                                .brown.shade100,
                                                            style: BorderStyle
                                                                .solid)),
                                                    child: const Text(
                                                        "Ghee Roast",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.black)),
                                                  ),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius
                                                                          .circular(
                                                                              20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "100 Cal",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
                                                        ),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius
                                                                          .circular(
                                                                              20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "120 mins",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
                                                        )
                                                      ])
                                                ]))
                                          ]))),
                              InkWell(
                                  onTap: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RecipeView()))
                                      },
                                  child: Container(
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.brown.shade50,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(50)),
                                          border: Border.all(
                                              color: Colors.brown.shade50,
                                              style: BorderStyle.solid)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const SizedBox(
                                              height: 100,
                                              width: 100,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'assets/green_salad.jpg'),
                                              ),
                                            ),
                                            Container(
                                                width: 210,
                                                margin: const EdgeInsets.all(5),
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Column(children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.all(5),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .brown.shade100,
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    20)),
                                                        border: Border.all(
                                                            color: Colors
                                                                .brown.shade100,
                                                            style: BorderStyle
                                                                .solid)),
                                                    child: const Text(
                                                        "Ghee Roast",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.black)),
                                                  ),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius
                                                                          .circular(
                                                                              20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "100 Cal",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
                                                        ),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius
                                                                          .circular(
                                                                              20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "120 mins",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
                                                        )
                                                      ])
                                                ]))
                                          ]))),
                            ])))),
                Container(
                  color: Colors.white,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.home),
                          ),
                          const Text("Home",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black)),
                        ]),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MyProfile()));
                              },
                              icon: const Icon(Icons.person_3_outlined),
                            ),
                            const Text("My Profile",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black)),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Favourites()));
                              },
                              icon: const Icon(Icons.favorite_outline),
                            ),
                            const Text("Favourites",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black)),
                          ],
                        ),
                        Column(children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Notifications()));
                            },
                            icon: const Icon(Icons.notifications_outlined),
                          ),
                          const Text("Notifications",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black))
                        ])
                      ]),
                )
              ]),
        ))));
  }
}

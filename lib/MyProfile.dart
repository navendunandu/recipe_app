import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:new_app/CreateRecipe.dart';
import 'package:new_app/EditProfile.dart';
import 'package:new_app/Favourites.dart';
import 'package:new_app/FollowList.dart';
import 'package:new_app/Notifications.dart';
import 'package:new_app/RecipeHome.dart';
import 'package:new_app/RecipeView.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  String uid = "";

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  void _getUser() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      uid = (prefs.getString('uid') ?? "");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.brown.shade100,
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/recipe_background.jpg"))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(5),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/green_salad.jpg'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Text(
                      uid,
                      style: const TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: const Text(
                      "Food Innovator",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      border: Border.all(
                          color: Colors.white, style: BorderStyle.solid)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(children: const [
                            Text("8",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                            Text("Recipes",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black))
                          ]),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FollowList()));
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: Column(children: const [
                              Text("12",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                              Text("Followers",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black))
                            ]),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FollowList()));
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            //height: 50,
                            //width: 50,
                            child: Column(children: const [
                              Text("20",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                              Text("Following",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black))
                            ]),
                          ),
                        )
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 180,
                      height: 50,
                      margin: const EdgeInsets.only(
                          left: 10, right: 5, top: 5, bottom: 5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                              color: Colors.white, style: BorderStyle.solid)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditProfile()));
                        },
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 50,
                      margin: const EdgeInsets.only(
                          left: 5, right: 10, top: 5, bottom: 5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                              color: Colors.white, style: BorderStyle.solid)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateRecipe()));
                        },
                        child: const Text(
                          "Create Recipe",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
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
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(50)),
                                          border: Border.all(
                                              color: Colors.white,
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
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(50)),
                                          border: Border.all(
                                              color: Colors.white,
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
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(50)),
                                          border: Border.all(
                                              color: Colors.white,
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
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(50)),
                                          border: Border.all(
                                              color: Colors.white,
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
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(50)),
                                          border: Border.all(
                                              color: Colors.white,
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
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RecipeHome()));
                            },
                            icon: const Icon(Icons.home_outlined),
                          ),
                          const Text("Home",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black)),
                        ]),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MyProfile()));
                              },
                              icon: const Icon(Icons.person_3),
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
                                Navigator.pushReplacement(
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
                              Navigator.pushReplacement(
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
        ),
      ),
    ));
  }
}

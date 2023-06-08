import 'package:flutter/material.dart';
import 'package:new_app/MyProfile.dart';
import 'package:new_app/Notifications.dart';
import 'package:new_app/RecipeHome.dart';
import 'package:new_app/RecipeView.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                decoration: BoxDecoration(
              color: Colors.brown.shade100,
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/recipe_background.jpg"))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 280,
                        margin: const EdgeInsets.all(15),
                        padding: const EdgeInsets.all(5),
                        child: const Text(
                          "My Favourites",
                          style: TextStyle(
                              fontSize: 24,
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
                                            margin: const EdgeInsets.only(
                                                bottom: 10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(50)),
                                                border: Border.all(
                                                    color: Colors.white,
                                                    style: BorderStyle.solid)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
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
                                                      margin:
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5),
                                                      child: Column(children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors.brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius.circular(
                                                                          20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "Green Salad",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
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
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
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
                                                                        fontSize:
                                                                            16,
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
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
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
                                                                        fontSize:
                                                                            16,
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
                                            margin: const EdgeInsets.only(
                                                bottom: 10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(50)),
                                                border: Border.all(
                                                    color: Colors.white,
                                                    style: BorderStyle.solid)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
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
                                                      margin:
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5),
                                                      child: Column(children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors.brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius.circular(
                                                                          20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "Green Salad",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
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
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
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
                                                                        fontSize:
                                                                            16,
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
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
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
                                                                        fontSize:
                                                                            16,
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
                                            margin: const EdgeInsets.only(
                                                bottom: 10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(50)),
                                                border: Border.all(
                                                    color: Colors.white,
                                                    style: BorderStyle.solid)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
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
                                                      margin:
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5),
                                                      child: Column(children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors.brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius.circular(
                                                                          20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "Green Salad",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
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
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
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
                                                                        fontSize:
                                                                            16,
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
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
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
                                                                        fontSize:
                                                                            16,
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
                                            margin: const EdgeInsets.only(
                                                bottom: 10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(50)),
                                                border: Border.all(
                                                    color: Colors.white,
                                                    style: BorderStyle.solid)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
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
                                                      margin:
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5),
                                                      child: Column(children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors.brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius.circular(
                                                                          20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "Ghee Roast",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
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
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
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
                                                                        fontSize:
                                                                            16,
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
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
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
                                                                        fontSize:
                                                                            16,
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
                                            margin: const EdgeInsets.only(
                                                bottom: 10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(50)),
                                                border: Border.all(
                                                    color: Colors.white,
                                                    style: BorderStyle.solid)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
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
                                                      margin:
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5),
                                                      child: Column(children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          decoration: BoxDecoration(
                                                              color: Colors.brown
                                                                  .shade100,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius.circular(
                                                                          20)),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .brown
                                                                      .shade100,
                                                                  style: BorderStyle
                                                                      .solid)),
                                                          child: const Text(
                                                              "Ghee Roast",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .black)),
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
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
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
                                                                        fontSize:
                                                                            16,
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
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
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
                                                                        fontSize:
                                                                            16,
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
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black)),
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
                                    icon:
                                        const Icon(Icons.person_3_outlined),
                                  ),
                                  const Text("My Profile",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black)),
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.favorite),
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
                                  icon:
                                      const Icon(Icons.notifications_outlined),
                                ),
                                const Text("Notifications",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black))
                              ])
                            ]),
                      )
                    ]))));
  }
}

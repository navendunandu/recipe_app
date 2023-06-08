import 'package:flutter/material.dart';
import 'package:new_app/CreateRecipe.dart';
import 'package:new_app/Favourites.dart';
import 'package:new_app/Notifications.dart';
import 'package:new_app/RecipeHome.dart';
import 'package:new_app/RecipeView.dart';

class MyRecipes extends StatefulWidget {
  const MyRecipes({super.key});

  @override
  State<MyRecipes> createState() => _MyRecipesState();
}

class _MyRecipesState extends State<MyRecipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: Colors.teal.shade100,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //width: 300,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(5),
              child: const Text(
                "My Recipes",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                width: 280,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.teal.shade50,
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    border: Border.all(
                        color: Colors.teal.shade50, style: BorderStyle.solid)),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 18)),
                ),
              ),
              Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    color: Colors.teal.shade50,
                  ),
                  child: SizedBox(
                      height: 50,
                      width: 50,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateRecipe()));
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ))),
            ]),
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
                                      color: Colors.teal.shade50,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                      border: Border.all(
                                          color: Colors.teal.shade50,
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
                                            padding: const EdgeInsets.all(5),
                                            child: Column(children: [
                                              Container(
                                                margin: const EdgeInsets.all(5),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    color: Colors.teal.shade100,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    border: Border.all(
                                                        color: Colors
                                                            .teal.shade100,
                                                        style:
                                                            BorderStyle.solid)),
                                                child: const Text("Ghee Roast",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black)),
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .teal.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius.circular(
                                                                      20)),
                                                          border: Border.all(
                                                              color: Colors.teal
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
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .teal.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius.circular(
                                                                      20)),
                                                          border: Border.all(
                                                              color: Colors.teal
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
                                      color: Colors.teal.shade50,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                      border: Border.all(
                                          color: Colors.teal.shade50,
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
                                            padding: const EdgeInsets.all(5),
                                            child: Column(children: [
                                              Container(
                                                margin: const EdgeInsets.all(5),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    color: Colors.teal.shade100,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    border: Border.all(
                                                        color: Colors
                                                            .teal.shade100,
                                                        style:
                                                            BorderStyle.solid)),
                                                child: const Text("Ghee Roast",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black)),
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .teal.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius.circular(
                                                                      20)),
                                                          border: Border.all(
                                                              color: Colors.teal
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
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .teal.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius.circular(
                                                                      20)),
                                                          border: Border.all(
                                                              color: Colors.teal
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
                                      color: Colors.teal.shade50,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                      border: Border.all(
                                          color: Colors.teal.shade50,
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
                                            padding: const EdgeInsets.all(5),
                                            child: Column(children: [
                                              Container(
                                                margin: const EdgeInsets.all(5),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    color: Colors.teal.shade100,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    border: Border.all(
                                                        color: Colors
                                                            .teal.shade100,
                                                        style:
                                                            BorderStyle.solid)),
                                                child: const Text("Ghee Roast",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black)),
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .teal.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius.circular(
                                                                      20)),
                                                          border: Border.all(
                                                              color: Colors.teal
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
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .teal.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius.circular(
                                                                      20)),
                                                          border: Border.all(
                                                              color: Colors.teal
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
                                      color: Colors.teal.shade50,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                      border: Border.all(
                                          color: Colors.teal.shade50,
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
                                            padding: const EdgeInsets.all(5),
                                            child: Column(children: [
                                              Container(
                                                margin: const EdgeInsets.all(5),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    color: Colors.teal.shade100,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    border: Border.all(
                                                        color: Colors
                                                            .teal.shade100,
                                                        style:
                                                            BorderStyle.solid)),
                                                child: const Text("Ghee Roast",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black)),
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .teal.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius.circular(
                                                                      20)),
                                                          border: Border.all(
                                                              color: Colors.teal
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
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .teal.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius.circular(
                                                                      20)),
                                                          border: Border.all(
                                                              color: Colors.teal
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
                                      color: Colors.teal.shade50,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                      border: Border.all(
                                          color: Colors.teal.shade50,
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
                                            padding: const EdgeInsets.all(5),
                                            child: Column(children: [
                                              Container(
                                                margin: const EdgeInsets.all(5),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    color: Colors.teal.shade100,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    border: Border.all(
                                                        color: Colors
                                                            .teal.shade100,
                                                        style:
                                                            BorderStyle.solid)),
                                                child: const Text("Ghee Roast",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black)),
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .teal.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius.circular(
                                                                      20)),
                                                          border: Border.all(
                                                              color: Colors.teal
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
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .teal.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius.circular(
                                                                      20)),
                                                          border: Border.all(
                                                              color: Colors.teal
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
                                      color: Colors.teal.shade50,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                      border: Border.all(
                                          color: Colors.teal.shade50,
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
                                            padding: const EdgeInsets.all(5),
                                            child: Column(children: [
                                              Container(
                                                margin: const EdgeInsets.all(5),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    color: Colors.teal.shade100,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    border: Border.all(
                                                        color: Colors
                                                            .teal.shade100,
                                                        style:
                                                            BorderStyle.solid)),
                                                child: const Text("Ghee Roast",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black)),
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .teal.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius.circular(
                                                                      20)),
                                                          border: Border.all(
                                                              color: Colors.teal
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
                                                          const EdgeInsets.all(
                                                              5),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .teal.shade100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius.circular(
                                                                      20)),
                                                          border: Border.all(
                                                              color: Colors.teal
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
              color: Colors.teal.shade50,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RecipeHome()));
                        },
                        icon: const Icon(Icons.home_outlined),
                      ),
                      const Text("Home",
                          style: TextStyle(fontSize: 10, color: Colors.black)),
                    ]),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.soup_kitchen),
                        ),
                        const Text("My Recipes",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Favourites()));
                          },
                          icon: const Icon(Icons.favorite_outline),
                        ),
                        const Text("Favourites",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ],
                    ),
                    Column(children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Notifications()));
                        },
                        icon: const Icon(Icons.notifications_outlined),
                      ),
                      const Text("Notifications",
                          style: TextStyle(fontSize: 10, color: Colors.black))
                    ])
                  ]),
            )
          ]),
    )));
  }
}

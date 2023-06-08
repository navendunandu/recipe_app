import 'package:flutter/material.dart';
import 'package:new_app/Favourites.dart';
import 'package:new_app/MyProfile.dart';
import 'package:new_app/RecipeHome.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Container(
              width: 280,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Notifications",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(children: [
                Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.brown.shade50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: Colors.brown.shade50,
                            style: BorderStyle.solid)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            height: 45,
                            width: 45,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/green_salad.jpg'),
                            ),
                          ),
                          Column(children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 300,
                              child: const Text(
                                  "Pooja Korah liked your  recipe ",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              margin: const EdgeInsets.only(
                                  left: 165, top: 5, bottom: 5, right: 5),
                              child: Text("7th May 12:50 pm",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700)),
                            )
                          ])
                        ])),
                Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.brown.shade50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: Colors.brown.shade50,
                            style: BorderStyle.solid)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            height: 45,
                            width: 45,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/green_salad.jpg'),
                            ),
                          ),
                          Column(children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 300,
                              child: const Text(
                                  "Pooja Korah liked your  recipe ",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              margin: const EdgeInsets.only(
                                  left: 165, top: 5, bottom: 5, right: 5),
                              child: Text("7th May 12:50 pm",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700)),
                            )
                          ])
                        ])),
                Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.brown.shade50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: Colors.brown.shade50,
                            style: BorderStyle.solid)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            height: 45,
                            width: 45,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/green_salad.jpg'),
                            ),
                          ),
                          Column(children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 300,
                              child: const Text(
                                  "Meegan Scariah uploaded a new recipe",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              margin: const EdgeInsets.only(
                                  left: 165, top: 5, bottom: 5, right: 5),
                              child: Text("7th May 12:50 pm",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700)),
                            )
                          ])
                        ])),
                Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.brown.shade50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: Colors.brown.shade50,
                            style: BorderStyle.solid)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            height: 45,
                            width: 45,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/green_salad.jpg'),
                            ),
                          ),
                          Column(children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 300,
                              child: const Text(
                                  "Pooja Korah liked your  recipe ",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              margin: const EdgeInsets.only(
                                  left: 165, top: 5, bottom: 5, right: 5),
                              child: Text("7th May 12:50 pm",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700)),
                            )
                          ])
                        ])),
                Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.brown.shade50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: Colors.brown.shade50,
                            style: BorderStyle.solid)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            height: 45,
                            width: 45,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/green_salad.jpg'),
                            ),
                          ),
                          Column(children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 300,
                              child: const Text(
                                  "Meegan Scariah uploaded a new recipe",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              margin: const EdgeInsets.only(
                                  left: 165, top: 5, bottom: 5, right: 5),
                              child: Text("7th May 12:50 pm",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700)),
                            )
                          ])
                        ])),
              ]),
            )),
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
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyProfile()));
                          },
                          icon: const Icon(Icons.person_3_outlined),
                        ),
                        const Text("My Profile",
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
                        onPressed: () {},
                        icon: const Icon(Icons.notifications),
                      ),
                      const Text("Notifications",
                          style: TextStyle(fontSize: 10, color: Colors.black))
                    ])
                  ]),
            )
          ],
        ),
      )),
    );
  }
}

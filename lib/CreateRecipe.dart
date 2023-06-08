import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateRecipe extends StatefulWidget {
  const CreateRecipe({super.key});

  @override
  State<CreateRecipe> createState() => _CreateRecipeState();
}

class _CreateRecipeState extends State<CreateRecipe> {
  final TextEditingController _recipenameController = TextEditingController();
  final TextEditingController _recipeaboutController = TextEditingController();
  final TextEditingController _recipeingredientController =
      TextEditingController();
  final TextEditingController _recipequantityController =
      TextEditingController();
  final TextEditingController _recipepreparationstepController =
      TextEditingController();
  final TextEditingController _recipecalorieController =
      TextEditingController();
  final TextEditingController _recipetimeController = TextEditingController();
  final TextEditingController _recipeservingsController =
      TextEditingController();

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

  Future<void> createRecipe() async {
    await FirebaseFirestore.instance.collection('recipes').doc().set({
      'user_id': uid,
      'recipe_name': _recipenameController.text,
      'recipe_about': _recipecalorieController.text,
      'recipe_ingredient': _recipeingredientController.text,
      'quantity': _recipequantityController.text,
      'preparation_steps': _recipepreparationstepController.text,
      'calories': _recipecalorieController.text,
      'time': _recipetimeController.text,
      'servings': _recipeservingsController.text
    });
  }

  int ingredient_count = 1;

  void addIngredient() {
    setState(() {
      ingredient_count += 1;
    });
  }

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
                "Create Recipe",
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
                    width: 500,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: const Text("Recipe Name",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.only(
                        left: 15, right: 15, top: 5, bottom: 5),
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid)),
                    child: TextField(
                      controller: _recipenameController,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Enter recipe name",
                          hintStyle: TextStyle(
                              color: Colors.grey.shade600, fontSize: 16)),
                    ),
                  ),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: const Text("About",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.only(
                        left: 15, right: 15, top: 5, bottom: 5),
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid)),
                    child: TextField(
                      controller: _recipeaboutController,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Enter a short description",
                          hintStyle: TextStyle(
                              color: Colors.grey.shade600, fontSize: 16)),
                    ),
                  ),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: const Text("Ingredients",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    //width: 500,
                    height: 300,
                    child: ListView.builder(
                        itemCount: ingredient_count,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Row(children: [
                              Container(
                                width: 200,
                                margin: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5, bottom: 5),
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5, bottom: 5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50)),
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid)),
                                child: TextField(
                                  controller: _recipeingredientController,
                                  decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: "Ingredient ${index+1}",
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 16)),
                                ),
                              ),
                              Container(
                                width: 100,
                                margin: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5, bottom: 5),
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5, bottom: 5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50)),
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid)),
                                child: TextField(
                                  controller: _recipequantityController,
                                  decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: "Quantity",
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 16)),
                                ),
                              ),
                            ]),
                          );
                        }),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {
                          addIngredient();
                        },
                        child: const Text(
                          "+ Add Ingredient",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        )),
                  ),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: const Text("Preparation Steps",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.only(
                        left: 15, right: 15, top: 5, bottom: 5),
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid)),
                    child: TextField(
                      controller: _recipepreparationstepController,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Enter Step 1",
                          hintStyle: TextStyle(
                              color: Colors.grey.shade600, fontSize: 16)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "+ Add Step",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        )),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 115,
                              margin: const EdgeInsets.only(
                                  left: 10, right: 5, top: 5, bottom: 5),
                              padding: const EdgeInsets.only(
                                  left: 10, right: 5, top: 5, bottom: 5),
                              child: const Text("Calories",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Container(
                              width: 115,
                              margin: const EdgeInsets.only(
                                  left: 10, right: 5, top: 5, bottom: 5),
                              padding: const EdgeInsets.only(
                                  left: 10, right: 5, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100)),
                                  border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid)),
                              child: TextField(
                                controller: _recipecalorieController,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    label: Center(child: const Text("KCal",textAlign: TextAlign.center)),
                                    labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16)),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 115,
                              margin: const EdgeInsets.only(
                                  left: 5, right: 5, top: 5, bottom: 5),
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, top: 5, bottom: 5),
                              child: const Text("Time",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Container(
                              width: 115,
                              margin: const EdgeInsets.only(
                                  left: 5, right: 5, top: 5, bottom: 5),
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100)),
                                  border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid)),
                              child: TextField(
                                controller: _recipetimeController,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    labelText: "Minutes",
                                    alignLabelWithHint: true,
                                    labelStyle: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 16)),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 115,
                              margin: const EdgeInsets.only(
                                  left: 5, right: 10, top: 5, bottom: 5),
                              padding: const EdgeInsets.only(
                                  left: 5, right: 10, top: 5, bottom: 5),
                              child: const Text("Servings",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Container(
                              width: 115,
                              margin: const EdgeInsets.only(
                                  left: 5, right: 10, top: 5, bottom: 5),
                              padding: const EdgeInsets.only(
                                  left: 5, right: 10, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100)),
                                  border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid)),
                              child: TextField(
                                controller: _recipeservingsController,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    labelText: "Servings",
                                    labelStyle: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 16)),
                              ),
                            ),
                          ],
                        ),
                      ]),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: const Text("Upload Photo",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        color: Colors.brown.shade900,
                        iconSize: 35,
                      )),
                  const SizedBox(
                    width: 300,
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        onPressed: () {
                          createRecipe();
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Recipe Created"),
                          ));
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.brown.shade600),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                        child: const Text(
                          "Create Recipe",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                ]),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class ListTileItem extends StatefulWidget {
  const ListTileItem({super.key});

  @override
  _ListTileItemState createState() => _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("Hai"),
      trailing: Row(
        children: <Widget>[
          _itemCount != 0
              ? IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () => setState(() => _itemCount--),
                )
              : Container(),
          Text(_itemCount.toString()),
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => setState(() => _itemCount++))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RecipeView extends StatefulWidget {
  const RecipeView({super.key});

  @override
  State<RecipeView> createState() => _RecipeViewState();
}

class _RecipeViewState extends State<RecipeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.brown.shade100,
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/recipe_background.jpg"))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        "Green Salad",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                      ),
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 290,
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(5),
                          child: const Text(
                            "Traditional Japanese Recipe",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(5),
                          child:IconButton(icon: const Icon(Icons.favorite_outline), onPressed: () {  },)
                        )
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 140,
                                  margin: const EdgeInsets.only(right:10,top:10,bottom:10),
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(40)),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        margin: const EdgeInsets.all(5),
                                        padding: const EdgeInsets.all(5),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.brown.shade100,
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(50)),
                                            border: Border.all(
                                                color: Colors.brown.shade100,
                                                style: BorderStyle.solid)),
                                        child: const Text("100",style: TextStyle(fontSize: 16, color: Colors.black),),
                                      ),
                                      const Text("Calories",style: TextStyle(fontSize: 16, color: Colors.black),)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  margin: const EdgeInsets.only(right:10,top:10,bottom:10),
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(40)),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        margin: const EdgeInsets.all(5),
                                        padding: const EdgeInsets.all(5),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.brown.shade100,
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(50)),
                                            border: Border.all(
                                                color: Colors.brown.shade100,
                                                style: BorderStyle.solid)),
                                        child: const Text("30",style: TextStyle(fontSize: 16, color: Colors.black),),
                                      ),
                                      const Text("Minutes",style: TextStyle(fontSize: 16, color: Colors.black),)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  margin: const EdgeInsets.only(right:10,top:10,bottom:10),
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(40)),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        margin: const EdgeInsets.all(5),
                                        padding: const EdgeInsets.all(5),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.brown.shade100,
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(50)),
                                            border: Border.all(
                                                color: Colors.brown.shade100,
                                                style: BorderStyle.solid)),
                                        child: const Text("5",style: TextStyle(fontSize: 16, color: Colors.black),),
                                      ),
                                      const Text("Servings",style: TextStyle(fontSize: 16, color: Colors.black),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              height: 190,
                              width: 190,
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/green_salad.jpg'),
                              ),
                            ),
                          ],
                        )),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        "Ingredients",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight:FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(40)),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid)),
                      child: const Text(
                        '''odjwdjqjdqkldkqlk hdhiwodoqkdxkqfyj  nhjjj jgihkj cxthfkj akxpqa sdssxf dfgd dfgef bregeet sxssfffv
                        sgdcghfjkftyujkghvhfguyfgy  sghfhf sgdhnfh dhdhdfh xsgdchyrtdgdcg gvfhnfhfv bb fg
                        dsxfgdfhjfv gdgfhgvn cd gddydrazxjhj gdhdcdgdsd
                        hdhiwodoqkdxkqfyj  nhjjj jgihkj cxthfkj akxpqa sdssxf dfgd dfgef bregeet sxssfffv
                        sgdcghfjkftyujkghvhfguyfgy  sghfhf sgdhnfh dhdhdfh xsgdchyrtdgdcg gvfhnfhfv bb fg
                        dsxfgdfhjfv gdgfhgvn cd gddydrazxjhj gdhdcdgdsd''',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                  
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        "Preparation",
                        style: TextStyle(fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(40)),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid)),
                      child: const Text(
                        '''hdhiwodoqkdxkqfyj  nhjjj jgihkj cxthfkj akxpqa sdssxf dfgd dfgef bregeet sxssfffv
                        sgdcghfjkftyujkghvhfguyfgy  sghfhf sgdhnfh dhdhdfh xsgdchyrtdgdcg gvfhnfhfv bb fg
                        dsxfgdfhjfv gdgfhgvn cd gddydrazxjhj gdhdcdgdsd
                        hdhiwodoqkdxkqfyj  nhjjj jgihkj cxthfkj akxpqa sdssxf dfgd dfgef bregeet sxssfffv
                        sgdcghfjkftyujkghvhfguyfgy  sghfhf sgdhnfh dhdhdfh xsgdchyrtdgdcg gvfhnfhfv bb fg
                        dsxfgdfhjfv gdgfhgvn cd gddydrazxjhj gdhdcdgdsd''',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

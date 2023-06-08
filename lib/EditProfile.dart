import 'package:flutter/material.dart';
import 'package:new_app/EditPassword.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late TextEditingController _nameController = TextEditingController();
  late TextEditingController _aboutController = TextEditingController();
  late TextEditingController _phoneController = TextEditingController();
  late TextEditingController _mailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: 'Helen Sebastian');
    _aboutController = TextEditingController(text: 'Food Innovator');
    _phoneController = TextEditingController(text: '8789458741');
    _mailController = TextEditingController(text: 'helensebastian@gmail.com');
    _passwordController = TextEditingController(text: 'qwerty');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          //margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          width: 500,
          decoration: BoxDecoration(
              color: Colors.brown.shade100,
              image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assets/login_page_background.jpg"))),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 40.0),
                child: Column(children: [
                  Stack(children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(5),
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/green_salad.jpg'),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      bottom: 15,
                      child: IconButton(
                          onPressed: () {
                            //pickImageC();
                          },
                          icon: const Icon(
                            Icons.camera_alt,
                            size: 30,
                          )),
                    ),
                  ]),
                  Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: 250,
                      height: 80,
                      child: TextField(
                        controller: _nameController,
                      )),
                  Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: 250,
                      height: 80,
                      child: TextField(
                        controller: _aboutController,
                      )),
                  Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: 250,
                      height: 80,
                      child: TextField(
                        controller: _phoneController,
                      )),
                  Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: 250,
                      height: 80,
                      child: TextField(
                        controller: _mailController,
                      )),
                  Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: 250,
                      height: 80,
                      child: TextField(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditPassword()))
                        },
                        readOnly: true,
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.keyboard_arrow_right,size: 30,)),
                        obscureText: true,
                        controller: _passwordController,
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.brown.shade700),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ))),
                      child: const Text(
                        "Save Changes",
                        style: TextStyle(color: Colors.white),
                      )),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

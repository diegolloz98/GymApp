import 'package:flutter/material.dart';
import 'package:gymapp/user_page/homePage.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController UsernameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          SizedBox(height: 15),
          Text(
            "GymApp",
            style: TextStyle(
              fontSize: 49,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset("assets/dumbbell.png"),
          SizedBox(height: 30),
          ListTile(
            title: Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextField(
                cursorColor: Colors.grey,
                controller: UsernameController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  focusColor: Colors.grey,
                  hoverColor: Colors.grey,
                  prefixIconColor: Colors.grey,
                  suffixIconColor: Colors.grey,
                  labelText: 'Email',
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  icon: Icon(
                    Icons.email,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          ListTile(
            title: Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextField(
                cursorColor: Colors.green,
                controller: UsernameController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  focusColor: Colors.grey,
                  hoverColor: Colors.grey,
                  prefixIconColor: Colors.grey,
                  suffixIconColor: Colors.grey,
                  labelText: 'Password',
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  icon: Icon(
                    Icons.password,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 60),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
            },
            color: Colors.purple[900],
            height: 50.0,
            minWidth: double.infinity,
            child: Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
            },
            color: Colors.grey,
            height: 50.0,
            minWidth: double.infinity,
            child: Text(
              "SIGN-IN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

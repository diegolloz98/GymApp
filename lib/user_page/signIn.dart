import 'package:flutter/material.dart';
import 'package:gymapp/user_page/homePage.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController UsernameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();
  TextEditingController NameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignIn'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          SizedBox(height: 10),
          Text(
            "GymApp",
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset("assets/dumbbell.png"),
          SizedBox(height: 10),
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
                  labelText: 'Usuario',
                  hintText: 'Usuario',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  icon: Icon(
                    Icons.person,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextField(
                cursorColor: Colors.grey,
                controller: PhoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  focusColor: Colors.grey,
                  hoverColor: Colors.grey,
                  prefixIconColor: Colors.grey,
                  suffixIconColor: Colors.grey,
                  labelText: 'telefono',
                  hintText: 'telefono',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  icon: Icon(
                    Icons.phone,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextField(
                cursorColor: Colors.grey,
                controller: EmailController,
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
                controller: PasswordController,
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
                  icon: Icon(Icons.password),
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
              "SignIn",
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
              "Login",
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

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formkey = GlobalKey<FormState>();

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  bool toggleVisibility = true;
  bool confirmtoggleVisibility = true;
// Widget buildpasswordTextField(){
//   return
// }
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LogOut Page"),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
              "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?cs=srgb&dl=pexels-chevanon-photography-1108099.jpg&fm=jpg"),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formkey,
                  child: Card(
                      elevation: 12.0,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0, left: 0.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: usernameController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Enter Your Name",
                                labelText: "Username",
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                              controller: passwordController,
                              obscureText: toggleVisibility,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Enter Your Password",
                                labelText: "Pasword",
                                suffix: IconButton(
                                  icon: toggleVisibility
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      toggleVisibility = !toggleVisibility;
                                    });
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                              controller: confirmpasswordController,
                              obscureText: confirmtoggleVisibility,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Confirm the Password",
                                labelText: "Confirm Password",
                                suffix: IconButton(
                                  icon: confirmtoggleVisibility
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      confirmtoggleVisibility =
                                          !confirmtoggleVisibility;
                                    });
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            RaisedButton(
                              onPressed: () {},
                              child: Text("Sign In"),
                              color: Colors.black,
                              textColor: Colors.white,
                            ),
                            SizedBox(
                              height: 14.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Already have an Account",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text("Sign Up"),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

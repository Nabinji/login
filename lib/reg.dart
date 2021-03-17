import 'package:flutter/material.dart';

class Reg extends StatefulWidget {
  @override
  _RegState createState() => _RegState();
}

class _RegState extends State<Reg> {
  List<String> city = [
    "Bhaktapur",
    "Laltipur",
    "Kathmandu",
    "sURKHET",
    "Dailekh"
  ];
  String selectCity = "Bhaktapur";
  String groupValue = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(title: Text("Registration Form")),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.lightGreenAccent,
              height: MediaQuery.of(context).size.height,
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      NameField(),
                      SizedBox(height: 10.0),

                      District(),
                      SizedBox(
                        height: 10.0,
                      ),

                      Gender(),

                      // ),
                      SizedBox(
                        height: 10.0,
                      ),
                      MobileNumber(),

                      SizedBox(
                        height: 10.0,
                      ),

                      EmailAddresh(),

                      SizedBox(
                        height: 10.0,
                      ),
                      SymbolNumber(),
                      SizedBox(
                        height: 10.0,
                      ),
                      Center(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name",
          textScaleFactor: 1.5,
        ),
        SizedBox(
          height: 7.0,
        ),
        Row(children: <Widget>[
          Expanded(
            // flex: 3,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "First Name",
                hintText: "First Name",
                contentPadding: EdgeInsets.all(6.0),
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return "the field cannot be empty";
                } else
                  return null;
              },
            ),
          ),
          SizedBox(
            width: 4.0,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Last Name",
                hintText: "Last Name",
                contentPadding: EdgeInsets.all(10.0),
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return "the field cannot be empty";
                } else
                  return null;
              },
            ),
          ),
        ]),
      ],
    );
  }
}

// ignore: must_be_immutable
class District extends StatelessWidget {
  List<String> city = [
    "Bhaktapur",
    "Laltipur",
    "Kathmandu",
    "sURKHET",
    "Dailekh"
  ];
  String selectCity = "Bhaktapur";

  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("District", textScaleFactor: 1.5),
      SizedBox(
        height: 10.0,
      ),
      Container(
        padding: EdgeInsets.only(left: 20.0),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(2.0),
        ),
        child: DropdownButton(
            value: selectCity,
            isExpanded: true,
            items: city.map((String value) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
            onChanged: (value) {
              // setState(() {
              //   this.selectCity = value;
              // });
            }),
      ),
    ]);
  }
}

// ignore: must_be_immutable
class Gender extends StatelessWidget {
  String groupValue = "Male";
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Gender",
        textScaleFactor: 1.5,
      ),
      SizedBox(
        height: 10.0,
      ),
      Container(
        decoration: BoxDecoration(border: Border.all()),
        // child: Row(
        //   children: <Widget>[
        //     Container(
        child: Row(
          children: <Widget>[
            Radio(
                value: "Male",
                groupValue: groupValue,
                onChanged: (value) {
                  // setState(() {
                  //   this.groupValue = value;
                  // });
                }),
            Text("Male"),
          ],
        ),
      ),
      Container(
        child: Row(
          children: <Widget>[
            Radio(
                value: "Femail",
                groupValue: groupValue,
                onChanged: (value) {
                  // setState(() {
                  //   this.groupValue = value;
                  // });
                }),
            Text("Femail"),
          ],
        ),
      ),
    ]);
  }
}

class MobileNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "MobileNumber",
          textScaleFactor: 1.5,
        ),
        SizedBox(
          height: 10.0,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: "Mobile Number",
            hintText: "Mobile Number",
            contentPadding: EdgeInsets.all(10.0),
            prefixIcon: Icon(Icons.phone),
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value.isEmpty) {
              return "The field cannot be empty";
            } else
              return null;
          },
        ),
      ],
    );
  }
}

class EmailAddresh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "EmailAddresh",
          textScaleFactor: 1.5,
        ),
        SizedBox(
          height: 10.0,
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Email Addresh",
            hintText: "Email Addresh",
            contentPadding: EdgeInsets.all(10.0),
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value.isEmpty) {
              return "The field cannot be empty";
            } else
              return null;
          },
        ),
      ],
    );
  }
}

class SymbolNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "SymbolNumber",
        textScaleFactor: 1.5,
      ),
      SizedBox(
        height: 10.0,
      ),
      TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: "Symbol Number",
          hintText: "Symbol Number",
          contentPadding: EdgeInsets.all(10.0),
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value.isEmpty) {
            return "The field cannot be empty";
          } else
            return null;
        },
      ),
    ]);
  }
}

class Submit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100.0,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {},
          child: Text("Submit"),
        ),
      ),
    );
  }
}

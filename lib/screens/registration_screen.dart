import 'package:flutter/material.dart';
import 'package:pktech/screens/home_screen.dart';


class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  final _formKey = GlobalKey<FormState>();
  final firstnameEditingController = new TextEditingController();
  final lastnameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final mobileEditingController = new TextEditingController();
  final aadharidEditingController = new TextEditingController();

  final signupButton = Material(
    elevation: 5,
    borderRadius: BorderRadius.circular(30),
    color: Colors.redAccent,
    child: MaterialButton(
      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      //minWidth: MediaQuery.of(context).size.width,
      onPressed: (){
        //Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      },
      child: Text(
        "SignUp",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
      )),
  );

  @override
  Widget build(BuildContext context) {

    final firstnamefield = TextFormField(
      autofocus: false,
      controller: firstnameEditingController,
      keyboardType: TextInputType.name,

      onSaved: (value){
        firstnameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ));

    final lastnamefield = TextFormField(
        autofocus: false,
        controller: lastnameEditingController,
        keyboardType: TextInputType.name,

        onSaved: (value){
          lastnameEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Last Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final emailnamefield = TextFormField(
        autofocus: false,
        controller: emailEditingController,
        keyboardType: TextInputType.emailAddress,

        onSaved: (value){
          emailEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final mobilenamefield = TextFormField(
        autofocus: false,
        controller: mobileEditingController,
        keyboardType: TextInputType.number,

        onSaved: (value){
          mobileEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.phone),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Mobile Number",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final aadharidnamefield = TextFormField(
        autofocus: false,
        controller: aadharidEditingController,
        keyboardType: TextInputType.number,

        onSaved: (value){
          aadharidEditingController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.password),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Aadhar-Id Number",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                      child: Image.asset(
                        "assets/logo.png",
                            fit: BoxFit.contain,
                      )
                    ),
                    SizedBox(height: 5),
                    firstnamefield,

                    SizedBox(height: 20),
                    lastnamefield,

                    SizedBox(height: 20),
                    emailnamefield,

                    SizedBox(height: 20),
                    mobilenamefield,

                    SizedBox(height: 20),
                    aadharidnamefield,

                    SizedBox(height: 20),
                    signupButton,
                    SizedBox(height: 15),

                  ]
                ),
              )
            ),
          ),
        ),
      )
    );
  }
}


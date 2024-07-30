import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome To PharmaPedia"),
      centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
                child: Image.asset("assets/logo.png",fit: BoxFit.contain),
              ),
              Text(
                "Welcome To PharmaPedia",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Name",style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              )),
              Text("Mail",style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              )),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}

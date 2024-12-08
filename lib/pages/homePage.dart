// import 'package:agriboost/components/api.dart';
import 'package:agriboost/components/api.dart';
import 'package:agriboost/components/button.dart';
import 'package:agriboost/components/carders.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(233, 241, 241, 1),
      appBar: AppBar(
        shadowColor: Colors.grey,
        elevation: 10,
        title: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text("AgriBoost",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.more_horiz),
                )),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey[400],
              size: 40,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.category_outlined,
              color: Colors.grey[400],
              size: 40,
            ),
            label: "crops"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: Colors.grey[400],
              size: 40,
            ),
            label: "weather"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2,
              color: Colors.grey[400],
              size: 40,
            ),
            label: "you"),
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 200,
                // color: Colors.red, // Placeholder color
                child: Image.asset(
                  "assets/banner.jpg",
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hey, Utkarsh \n It's a sunny day!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.green[900],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_location,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Location",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ApiFetch(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ContainerButton(),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Carders(), Carders()],
            )
          ],
        ),
      ),
    );
  }
}

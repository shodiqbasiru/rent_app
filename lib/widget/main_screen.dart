import 'package:flutter/material.dart';
import 'package:rent_app/model/user.dart';
import 'package:rent_app/utils/util.dart';
import 'package:rent_app/widget/vehicle/vehicle_list.dart';

class MainScreen extends StatelessWidget {
  final User user;
  const MainScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade700,
        title: const Text("RentApp", style: TextStyle(color: Colors.white)),
      ),
      body: ListView(children: [
        Header(user: user),
        const SizedBox(height: 10),
        VehicleList(user: user),
      ]),
    );
  }
}

class Header extends StatelessWidget {
  final User user;
  const Header({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return HeaderWebScreen(user: user);
      } else {
        return HeaderMobileScreen(user: user);
      }
    });
    }
}

class HeaderMobileScreen extends StatelessWidget {
  final User user;
  const HeaderMobileScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset("images/rent_logo_1.png")),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome ${makeCapitalize(user.name)}",
                      style: const TextStyle(
                          fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Let's find your vehicle",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search vehicle",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Icon(Icons.list_alt_sharp),
              SizedBox(width: 10),
              Text(
                "List of Vehicle",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HeaderWebScreen extends StatelessWidget {
  final User user;
  const HeaderWebScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/rent_logo_1.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome ${makeCapitalize(user.name)}",
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Let's find your vehicle",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search vehicle",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Icon(Icons.list_alt_sharp),
              SizedBox(width: 10),
              Text(
                "List of Vehicle",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
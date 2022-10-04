import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            child: Center(
              child: Text(
                'APPNAME',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
            ),
            height: 190.0,
            width: MediaQuery.of(context).size.width - 0.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              image: DecorationImage(
                image: new NetworkImage(
                    "https://img.freepik.com/free-vector/farm-scene-with-tractor-landscape_603843-3291.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        toolbarHeight: 250,
      ),
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }
}

Widget getFooter() {
  int pageindex = 0;
  List bottomItems = [
    "assets/images/home.svg",
    "assets/images/sprout.svg"
  ];

  return Container(
    padding: const EdgeInsets.only(left: 60, right: 60),
    width: double.infinity,
    height: 80,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      color: Colors.green[300],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        bottomItems.length,
        (index) {
          return InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              bottomItems[index],
              width: 30,
              color: Colors.white,
            ),
          );
        },
      ),
    ),
  );
}

Widget getBody() {
  List boxitems = ["Rice", "Wheat", "Cotton", "Sugarcane"];
  List boximages = [
    "https://img.icons8.com/external-justicon-flat-justicon/452/external-rice-thailand-element-justicon-flat-justicon.png",
    "https://img.icons8.com/external-victoruler-flat-victoruler/452/external-wheat-farming-victoruler-flat-victoruler.png",
    "https://img.icons8.com/color/344/cotton.png",
    "https://img.icons8.com/color/452/sugarcane.png"
  ];
  return Container(
    child: Column(
      children: List.generate(
        boxitems.length,
        (index) {
          return Container(
            margin: EdgeInsets.only(top: 10, left: 5, right: 5),
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            child: Text(
              boxitems[index],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.green[100],
              image: DecorationImage(
                  image: new NetworkImage(
                    boximages[index],
                  ),
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.centerRight),
            ),
          );
        },
      ),
    ),
  );
}

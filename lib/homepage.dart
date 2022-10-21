
import 'package:flutter/material.dart';
import 'package:tugas1/List_button.dart';
import 'package:tugas1/body.dart';

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
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.person_outline_rounded,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                textBaseline: TextBaseline.alphabetic,
                children: const [
                  Text(
                    'I Want to',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'poppins',
                        color: Colors.black),
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            // kategori
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // icon
                  kategori(
                      iconimage: 'asset/doughnut.png', buttonText: 'Donuts'),
                  kategori(iconimage: 'asset/burger.png', buttonText: 'Burger'),
                  kategori(
                      iconimage: 'asset/pancake.png', buttonText: 'Pancakes'),
                  kategori(
                      iconimage: 'asset/smootie.png', buttonText: 'smootie'),
                  kategori(iconimage: 'asset/pizza.png', buttonText: 'Pizza')
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: 
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                     
                    ),
                  ),
                  const itemwidget()
                ],
              )
              )
            
            
          ],
        ));
  }
}

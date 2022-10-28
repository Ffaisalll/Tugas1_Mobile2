import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
        body: SingleChildScrollView(
          child: Column(
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
                    kategori(
                        iconimage: 'asset/burger.png', buttonText: 'Burger'),
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
              Row(children: [
                Expanded(
                  child: menucontainer('asset/donat-stoberi.png',
                      'Donat Stroberi', Colors.redAccent.withOpacity(0.3)),
                ),
                Expanded(
                  child: menucontainer('asset/donat-macha.png', 'Donat Macha',
                      Colors.greenAccent.withOpacity(0.3)),
                  // const itemwidget()
                ),
              ]),
              Row(children: [
                Expanded(
                  child: menucontainer('asset/donat-capucico.png',
                      'Donat Cappucino', Colors.brown.withOpacity(0.3)),
                ),
                Expanded(
                  child: menucontainer('asset/donat-blueberi.png',
                      'Donat Bluberry', Colors.purpleAccent.withOpacity(0.3)),
                  // const itemwidget()
                ),
              ]),
            ],
          ),
        ));
  }
}

class menucontainer extends StatefulWidget {
  // const menucontainer({
  //   Key? key,
  // }) : super(key: key);
  final gambar;
  final judul;
  final bgmenu;

  menucontainer(this.gambar, this.judul, this.bgmenu);

  @override
  State<menucontainer> createState() => _menucontainerState();
}

class _menucontainerState extends State<menucontainer>
    with TickerProviderStateMixin {
  late final _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 800), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.bgmenu, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "\$2",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "detaildonat");
            },
            child: Container(
              margin: EdgeInsets.all(20),
              child: Image(
                height: 140,
                fit: BoxFit.fitHeight,
                image: AssetImage(widget.gambar),
              ),
            ),
          ),
          Text(
            widget.judul,
            style:
                GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          Text(
            'DONKINS',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w300),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (favorite == false) {
                      favorite = true;
                      _controller.forward();
                    } else {
                      favorite = false;
                      _controller.reverse();
                    }
                  },
                  child: Lottie.network(
                      'https://assets10.lottiefiles.com/datafiles/r4svAEpkQFrmcdIT0N3sEnH7D72XDnuPcEfHteYT/Twitter Favorite Heart.json',
                      controller: _controller,
                      width: 150,
                      height: 150),
                ),
                GestureDetector(
                  onTap: () {
                    if (favorite == false) {
                      favorite == true;
                      _controller.forward();
                    } else {
                      favorite = false;
                      _controller.reverse();
                    }
                  },
                  child: Lottie.network(
                      'https://assets2.lottiefiles.com/packages/lf20_ghetz8rv.json',
                      controller: _controller,
                      width: 100,
                      height: 100),
                ),

                // Text(
                //   'ADD',
                //   style: GoogleFonts.poppins(
                //       fontSize: 18,
                //       fontWeight: FontWeight.bold,
                //       decoration: TextDecoration.underline),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}

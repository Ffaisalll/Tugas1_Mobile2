import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});
  
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class itemwidget extends StatelessWidget {
  const itemwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.7,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < 5; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 2),
            margin: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "detaildonat");
                  },
                  child: Container(
                    margin: EdgeInsets.all(30),
                    child: Image.asset('asset/donat-stoberi.png'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Donat Stroberi',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'DONKINS',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.5)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Lottie.network('https://assets10.lottiefiles.com/datafiles/r4svAEpkQFrmcdIT0N3sEnH7D72XDnuPcEfHteYT/Twitter Favorite Heart.json')
                      ,
                      Text(
                        'ADD',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}

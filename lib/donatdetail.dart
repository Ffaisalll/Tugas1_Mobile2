import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas1/homepage.dart';

class detaildonat extends StatelessWidget {
  const detaildonat({super.key});

  @override
  Widget build(BuildContext context) {
   Widget titleSection = Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: const Text(
                    'DONAT STROWBERI',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

   

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'rasa manis karamel dan sedikit asam dari stroberi yang bercampur menghasilkan citarasa yang meleleh didalam mulut! ',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500
        ),
      ),
    );

    return
      
       Scaffold(
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(Homepage());
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            ),
      ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'asset/donat-stoberi.png',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            titleSection,
            
            textSection,
          ],
        ),
      );
    
  }

  
}

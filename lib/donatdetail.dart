import 'package:flutter/material.dart';
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
                      fontSize: 30,
                      color: Colors.black
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );

    

   

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'rasa manis karamel dan sedikit asam dari stroberi yang bercampur menghasilkan citarasa yang meleleh didalam mulut! ',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(0.6)
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
            Container( width: 300,
                  height: 150,
                  color: Colors.redAccent.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'asset/donat-stoberi.png',
                ),
              ),
              
            ),
            titleSection,
            textSection,
            SizedBox(height: 30,),
            // ingridiens
             Padding(
               padding: const EdgeInsets.only(left: 10, right: 10),
               child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("INGRIDIENS :",
            style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
            ),),
            Text('Tepung, Karamel, Stroberi, gula, telur, DLL.')
               ],
               ),
             ),
             
            SizedBox(height: 180,),
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black)
                ),
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(
            "\$2",
            style: const TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold, 
              color: Colors.black),
        ),
                    Container(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
            "Tidak Termasuk Biaya Pengiriman",
            style: const TextStyle(
              fontSize: 15, 
              fontWeight: FontWeight.bold, 
              color: Colors.black),
        ),Text(
            "ADD",
            style: const TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold, 
              color: Colors.black,
              decoration: TextDecoration.underline),
        ),
                        ],
                      ),
                    )
                
                  ],
              
          
              )
                
        

              ),
            )
          ],
        ),
        
      );
    
  }

  
}

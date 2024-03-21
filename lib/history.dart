import 'package:flutter/material.dart';
import 'package:untitled6/listviewer.dart';
class history extends StatelessWidget {
   history({Key? key}) : super(key: key);


   List<String> text1 =[ " Credit earned", " Credit redeemed"," Credit earned",
     " Credit earned" ,"Credit earned"," Credit redeemed" ];
   List<String> text2 =[ " +1000", " -1000"," +1000",
     " +1000" ,"+1000"," -2000" ];

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
         backgroundColor:  Colors.blueAccent,
        leading:  IconButton(
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => history() ),);
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 20,),
        ),
        //test
        centerTitle: true ,
        title: const Text( " Credit history",
          style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold,
          fontSize: 20),),


      ),
       //body
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            //Text
            const SizedBox( height: 20,),
            const Text("Credit history",
              style: TextStyle( fontSize:  20, fontWeight:  FontWeight.bold),),
            const SizedBox( height: 20,),


            //listview
             Expanded(
               child: ListView.builder(
                 itemCount: 4,
                   itemBuilder: ( context, index){
                   return listviewer();





               }),
             )

          ],
        ),
      ) ,
    );
  }
}

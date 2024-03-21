import 'package:flutter/material.dart';

class listviewer extends StatelessWidget {
  const listviewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height:  60,
        width: 60,

           decoration:  BoxDecoration( color:  Colors.white,
               borderRadius:  BorderRadius.circular(10)),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                decoration: BoxDecoration(color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon( Icons.wallet_giftcard_sharp, color: Colors.blueAccent),
                ),
              ),
              title: const Text( "Credit earned", style: TextStyle( fontSize:  15, fontWeight: FontWeight.bold),),
              subtitle: const Text( "yesterday",  style: TextStyle( fontSize:  10,color: Colors.grey),),
              trailing: const Text( "+1000" ,
                style: TextStyle ( color: Colors.green, fontSize: 15,
                    fontWeight: FontWeight.bold),),

            ),

            //second

            // ListTile(
            //   leading: Container(
            //     decoration: BoxDecoration(color: Colors.blue[100],
            //         borderRadius: BorderRadius.circular(10)),
            //     child: const Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Icon( Icons.wallet_giftcard_sharp, color: Colors.blueAccent),
            //     ),
            //   ),
            //   title: const Text( "Credit redeemed", style: TextStyle( fontSize:  15, fontWeight: FontWeight.bold),),
            //   subtitle: const Text( "10/10/23",  style: TextStyle( fontSize:  12,color: Colors.grey),),
            //   trailing: const Text( "-4000" ,
            //     style: TextStyle ( color: Colors.red, fontSize: 15,
            //         fontWeight: FontWeight.bold),),
            //
            // ),
          ],
        ),
      ),
    );
  }
}

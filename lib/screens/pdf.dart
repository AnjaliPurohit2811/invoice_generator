import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class PdfPreview extends StatefulWidget {
  const PdfPreview({super.key});

  @override
  State<PdfPreview> createState() => _PdfPreviewState();
}

class _PdfPreviewState extends State<PdfPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: 420,
            decoration: BoxDecoration(
              color: Colors.redAccent
            ),
            child: Center(
              child: Text('WARDIERE INC' ,
                style: TextStyle(color: Colors.black , fontSize: 30 , fontWeight: FontWeight.w500),
                  ),
            ),
          ),
          SizedBox(height: 7,),
          Divider(thickness: 3,color: Colors.black,),
          SizedBox(height: 15,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20 , top: 17),
                child: Container(
                  height: 150,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5 , left: 10),
                          child: Text('Billed to : ', style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Olivia Wilson' , style: TextStyle(color: Colors.redAccent , fontSize: 20 , fontWeight: FontWeight.w500),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('olivia@gmail.com' , style: TextStyle(color: Colors.black , fontSize: 15 ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10 , top: 5),
                          child: Text('123, anywhere , anycity.' , style: TextStyle(color: Colors.black , fontSize: 15 ),),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20 , top: 17),
                child: Container(
                  height: 150,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5 , left: 10),
                          child: Text('Payable to : ', style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Wardiere Inc' , style: TextStyle(color: Colors.redAccent , fontSize: 20 , fontWeight: FontWeight.w500),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Bank Id : 123456789' , style: TextStyle(color: Colors.black , fontSize: 15 ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10 , top: 5),
                          child: Text('Bank Name : Wardiere Inc' , style: TextStyle(color: Colors.black , fontSize: 15 ),),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 370,
            decoration: BoxDecoration(color: Colors.redAccent,
            borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Description' , style: TextStyle(fontSize: 15),),
                Text('Qty' , style: TextStyle(fontSize: 15),),
                Text('Price' , style: TextStyle(fontSize: 15),),
                Text('Subtotal' , style: TextStyle(fontSize: 15),),
              ],
            ),
          ),
         SizedBox(height: 20,),

         Padding(
           padding: const EdgeInsets.only(left: 170),
           child: Container(
             height: 60,
             width: 200,
             decoration: BoxDecoration(
               color: Colors.grey.shade300,
               borderRadius: BorderRadius.circular(20),

             ),
             child: Padding(
               padding: const EdgeInsets.only(top: 20 , left: 30),
               child: Text('SubTotal : ${subtotal}' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 17),),
             ),
           ),
         ),
          Padding(
            padding: const EdgeInsets.only(left: 170),
            child: Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20 , left: 30),
                child: Text('Gst : ${gst}' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 17 , color: Colors.black),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 170),
            child: Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20 , left: 30),
                child: Text('Finaltotal : ${finaltotal}' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 17 , color: Colors.white),),
              ),
            ),
          ),
         Row(
           children: [
             Container(
               height: 209,
               width: 200,
               decoration: BoxDecoration(
                 color: Colors.grey.shade300,
                 borderRadius: BorderRadius.circular(10)
               ),
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 120),
                     child: Divider(thickness: 2,
                     color: Colors.black,
                     indent: 20,
                     endIndent: 20,),
                   ),
                   Text('Benjamin Shah' , style: TextStyle(fontSize: 20),)
                 ],
               ),
             ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only( left: 20),
                  child: Text('For More Information' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text('+123-456789' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('www.wardiereinc.com' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600),),
                ),
              ],
            )


           ],
         ),



        ],
      ),
    );
  }
}
